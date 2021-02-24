var firstTypeList = "一级分类列表";
var secondTypeList = "二级分类列表";
var first5Type = [];
var moreType = [];

var masterVue = new Vue({
    el: '#main_navbar',
    data: {
        AllPage: "/sites/IT-eLearning",
        First5Type: first5Type,
        MoreType: moreType,
        ShowMore: false
    }
});

// 链接跳转
function ReturnURL(url) {
    window.location.href = url;
}

$(function () {
    SP.SOD.executeFunc('sp.js', 'SP.ClientContext', LoadUser);
});

// 加载登录人员信息
function LoadUser() {
    var clientContext = SP.ClientContext.get_current();
    var user = clientContext.get_web().get_currentUser();

    clientContext.load(user);
    clientContext.executeQueryAsync(onGetUserSuccess, onGetUserFail);

    // 如果上述调用成功，则执行此函数
    function onGetUserSuccess() {
        if (user.get_isSiteAdmin()) {
            // 管理员显示
            $("<link>").attr({ rel: "stylesheet", type: "text/css", href: "/sites/IT-eLearning/HomePage/Style/Settings.css" }).appendTo("head");
        }
        LoadType();
    }

    // 将在上述调用失败时执行此函数
    function onGetUserFail(sender, args) {
        console.log('获取用户信息失败，错误：' + args.get_message());
    }
}

// 加载导航类型
function LoadType() {
    var clientContext = new SP.ClientContext.get_current();
    var list = clientContext.get_web().get_lists().getByTitle(firstTypeList);

    var camlQuery = new SP.CamlQuery();
    var view = "<View><Query><OrderBy><FieldRef Name='OrderType' /></OrderBy></Query></View>";
    camlQuery.set_viewXml(view);

    var listItems = list.getItems(camlQuery);

    clientContext.load(listItems);
    clientContext.executeQueryAsync(onQuerySuccess, onQueryFailed);

    function onQuerySuccess() {
        var listEnumerator = listItems.getEnumerator();
        while (listEnumerator.moveNext()) {
            var currentItem = listEnumerator.get_current();
            var values = currentItem.get_fieldValues();
            var view = {
                name: values.Title,
                url: "/sites/IT-eLearning/HomePage/List.aspx?f=" + values.Title,
                childen: []
            };
            if (first5Type.length < 5) {
                first5Type.push(view);
            } else {
                moreType.push(view);
            }
        }
        if (moreType.length > 0) {
            masterVue.ShowMore = true;
        }
        LoadSecondType();
    }

    function onQueryFailed(sender, args) {
        LoadSecondType();
        console.log("获取失败： " + args.get_message());
    }
}

// 加载二级类型
function LoadSecondType() {
    var clientContext = new SP.ClientContext.get_current();
    var list = clientContext.get_web().get_lists().getByTitle(secondTypeList);

    var camlQuery = new SP.CamlQuery();
    var listItems = list.getItems(camlQuery);

    clientContext.load(listItems);
    clientContext.executeQueryAsync(onQuerySuccess, onQueryFailed);

    function onQuerySuccess() {
        var listEnumerator = listItems.getEnumerator();
        while (listEnumerator.moveNext()) {
            var currentItem = listEnumerator.get_current();
            var values = currentItem.get_fieldValues();
            var firstType = values.FirstType.get_lookupValue();
            var view = {
                name: values.Title,
                url: "/sites/IT-eLearning/HomePage/List.aspx?f=" + firstType + "&s=" + values.Title
            };

            var fJson = first5Type.filter(function (e) { return e.name == firstType; });
            if (fJson.length > 0) {
                fJson[0].childen.push(view);
            }
            if (moreType.length > 0) {
                var mJson = moreType.filter(function (e) { return e.name == firstType; });
                if (mJson.length > 0) {
                    mJson[0].childen.push(view);
                }
            }
        }
        $('#main_navbar').bootnavbar();
    }

    function onQueryFailed(sender, args) {
        $('#main_navbar').bootnavbar();
        console.log("获取失败： " + args.get_message());
    }
}


//搜索
function SearchSP() {
    var skey = $("#inputSearch").val().trim();;
    if (skey == "") {
        return;
    }
    var ahref = "/sites/IT-eLearning/_layouts/15/search.aspx/siteall?q=" + skey;
    window.location.href = ahref;
}

// 回车键搜索
function entersearch() {
    var event = window.event || arguments.callee.caller.arguments[0];
    if (event.keyCode == 13) {
        SearchSP();
    }
}