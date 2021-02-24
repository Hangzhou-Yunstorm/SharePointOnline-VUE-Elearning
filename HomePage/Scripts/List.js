var pageListName = "培训课程列表";
var sliderListName = "热门推荐列表";
var likeListName = "点赞数据列表";
var viewListName = "查看数据列表";

var regionJson = [];
var pageJson = [];
var sliderJson = [];
var likeCountList = [];
var viewCountList = [];

var pageVue = new Vue({
    el: '#home_content',
    data: {
        Page_Json: pageJson,
        Slider_Json: sliderJson,
        activeSort: 'order',
        activeFilter: 'all',
        pageType: ''
    }
});


SP.SOD.executeFunc('sp.js', 'SP.ClientContext', LoadView);

// 加载查看数据
function LoadView() {
    var clientContext = new SP.ClientContext.get_current();
    var list = clientContext.get_web().get_lists().getByTitle(viewListName);

    var camlQuery = new SP.CamlQuery();
    var listItems = list.getItems(camlQuery);

    clientContext.load(listItems);
    clientContext.executeQueryAsync(onQuerySuccess, onQueryFailed);

    function onQuerySuccess() {
        var listEnumerator = listItems.getEnumerator();
        while (listEnumerator.moveNext()) {
            var currentItem = listEnumerator.get_current();
            var values = currentItem.get_fieldValues();
            var view = {
                ID: values.Title,
                ViewCount: values.ViewCount
            };
            viewCountList.push(view);
        }
        LoadLike();
    }

    function onQueryFailed(sender, args) {
        LoadLike();
        console.log("获取失败： " + args.get_message());
    }
}

// 加载点赞数据
function LoadLike() {
    var clientContext = new SP.ClientContext.get_current();
    var list = clientContext.get_web().get_lists().getByTitle(likeListName);

    var camlQuery = new SP.CamlQuery();
    var listItems = list.getItems(camlQuery);

    clientContext.load(listItems);
    clientContext.executeQueryAsync(onQuerySuccess, onQueryFailed);

    function onQuerySuccess() {
        var listEnumerator = listItems.getEnumerator();
        while (listEnumerator.moveNext()) {
            var currentItem = listEnumerator.get_current();
            var values = currentItem.get_fieldValues();

            likeCountList.push(values.Title);
        }
        LoadTraining();
        LoadSlides();
    }

    function onQueryFailed(sender, args) {
        LoadTraining();
        LoadSlides();
        console.log("获取失败： " + args.get_message());
    }
}

// 加载培训
function LoadTraining() {
    var pageType = getQueryString('f');
    var sType = getQueryString('s');
    

    if (pageType == null || pageType == "") {
        return;
    }

    $("#navbarSupportedContent li a[title='" + pageType + "']").addClass("active");

    var clientContext = new SP.ClientContext.get_current();
    var pageList = clientContext.get_web().get_lists().getByTitle(pageListName);

    var camlQuery = new SP.CamlQuery();
    var view;
    if (sType == null || sType == "") {
        pageVue.pageType = pageType;
        view = "<View Scope='RecursiveAll'><Query><OrderBy><FieldRef Name='OrderIndex' /></OrderBy>" +
            "<Where><And><Eq><FieldRef Name='IsIndex' /><Value Type='Boolean'>1</Value></Eq>" +
            "<Eq><FieldRef Name='FirstType' /><Value Type='Lookup'>" + pageType + "</Value></Eq></And>" +
            "</Where></Query></View>";
    } else {
        pageVue.pageType = pageType + " - " + sType;
        view = "<View Scope='RecursiveAll'><Query><OrderBy><FieldRef Name='OrderIndex' /></OrderBy>" +
            "<Where><And><And><Eq><FieldRef Name='IsIndex' /><Value Type='Boolean'>1</Value></Eq>" +
            "<Eq><FieldRef Name='FirstType' /><Value Type='Lookup'>" + pageType + "</Value></Eq></And>" +
            "<Eq><FieldRef Name='SecondType' /><Value Type='Lookup'>" + sType + "</Value></Eq></And>" +
            "</Where></Query></View>";
    }

    camlQuery.set_viewXml(view);
    var pageListItems = pageList.getItems(camlQuery);

    clientContext.load(pageListItems);
    clientContext.executeQueryAsync(onQuerySuccess, onQueryFailed);

    function onQuerySuccess() {

        var listEnumerator = pageListItems.getEnumerator();
        while (listEnumerator.moveNext()) {
            var currentItem = listEnumerator.get_current();
            var values = currentItem.get_fieldValues();
            var page = {
                url: "/sites/IT-eLearning/Lists/TrainList/DispForm.aspx?ID=" + values.ID,
                title: values.Title,
                likeCount: GetLike(values.ID),
                commentCount: GetView(values.ID),
                image: values.Thumbnails,
                pageType: values.PageType,
                pageCount: values.PageCount,
                author: values.Editor.get_lookupValue(),
                modified: values.Modified.Format("yyyy-MM-dd HH:mm"),
                date: values.Modified,
                order: values.OrderIndex,
                video: values.IsVideo,
                description: values.Description
            };
            pageJson.push(page);
        }
        regionJson = pageJson;
    }

    function onQueryFailed(sender, args) {
        console.log("获取失败： " + args.get_message());
    }
}

// 获取查看数
function GetView(ID) {
    var views = viewCountList.filter(function (item, index, array) {
        return item.ID == ID;
    });
    if (views.length > 0) {
        return views[0].ViewCount;
    }
    return 0;
}

// 获取点赞数
function GetLike(ID) {
    var likes = likeCountList.filter(function (item, index, array) {
        return item == ID;
    });
    return likes.length;
}

// 加载右侧图片
function LoadSlides() {
    var clientContext = new SP.ClientContext.get_current();
    var sliderList = clientContext.get_web().get_lists().getByTitle(sliderListName);

    var camlQuery = new SP.CamlQuery();
    var view = "<View Scope=\"Recursive\"><Query><OrderBy><FieldRef Name='OrderIndex' /></OrderBy>" +
        "<Where><Eq><FieldRef Name='IsShow' /><Value Type='Boolean'>1</Value></Eq></Where></Query></View>";
    camlQuery.set_viewXml(view);
    var sliderListItems = sliderList.getItems(camlQuery);

    clientContext.load(sliderListItems);
    clientContext.executeQueryAsync(onQuerySuccess, onQueryFailed);

    function onQuerySuccess() {
        var listEnumerator = sliderListItems.getEnumerator();
        while (listEnumerator.moveNext()) {
            var currentItem = listEnumerator.get_current();
            var image = currentItem.get_fieldValues().FileRef;
            var returnUrl = currentItem.get_fieldValues().ReturnUrl;
            if (returnUrl == null || returnUrl == "" || returnUrl == "#") {
                returnUrl = "###";
            } else {
                if (returnUrl.indexOf("http://") != 0 && returnUrl.indexOf("https://") != 0) {
                    returnUrl = "https://" + returnUrl;
                }
            }
            var slider = { url: returnUrl, image: image };
            sliderJson.push(slider);
        }
    }

    function onQueryFailed(sender, args) {
        console.log("获取失败： " + args.get_message());
    }

}


// 排序
function FilterPage(filter) {
    if (pageVue.activeFilter != filter) {
        if (filter != "all") {
            pageJson = regionJson.filter(function (item, index, array) {
                return item.video == true;
            });
        } else {
            pageJson = regionJson;
        }
        pageVue.Page_Json = pageJson;
        pageVue.activeFilter = filter;
        SoutPage('order', false);
    }
}

// 排序
function SoutPage(sort, reverse) {
    if (pageVue.activeSort != sort) {
        pageJson.sort(compare(sort));
        if (reverse) {
            pageJson.reverse();
        };
        pageVue.Page_Json = pageJson;
        pageVue.activeSort = sort;
    }
}

// 获取值，空为0
function getValue(value) {
    if (value == "" || value == null) {
        return "0";
    }
    return value;
}

// 比较数据
function compare(property) {
    return function (a, b) {
        var value1 = a[property];
        var value2 = b[property];
        return value1 - value2;
    }
}

// 获取链接参数
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return decodeURI(r[2]);
    return null;
}

// 对Date的扩展，将 Date 转化为指定格式的String
Date.prototype.Format = function (fmt) {
    var o = {
        "M+": this.getMonth() + 1, //月份 
        "d+": this.getDate(), //日 
        "H+": this.getHours(), //小时 
        "m+": this.getMinutes(), //分 
        "s+": this.getSeconds(), //秒 
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
        "S": this.getMilliseconds() //毫秒 
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}