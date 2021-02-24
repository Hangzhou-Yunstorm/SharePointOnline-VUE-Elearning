var userName, clientContext, likeList, viewList, pageID, likeItem, likeCount;

var likeListName = "点赞数据列表";
var viewListName = "查看数据列表";

SP.SOD.executeFunc('sp.js', 'SP.ClientContext', LoadSite);

// 加载登录人员信息
function LoadSite() {
    pageID = getQueryString("ID");

    clientContext = SP.ClientContext.get_current();
    var user = clientContext.get_web().get_currentUser();

    clientContext.load(user);
    clientContext.executeQueryAsync(onGetUserSuccess, onGetUserFail);

    // 如果上述调用成功，则执行此函数
    function onGetUserSuccess() {
        userName = user.get_email();
        LoadLikeCount();
        LoadViewCount();
    }

    // 将在上述调用失败时执行此函数
    function onGetUserFail(sender, args) {
        LoadLikeCount();
        LoadViewCount();
        console.log('获取用户信息失败，错误：' + args.get_message());
    }
}


// 加载点赞数
function LoadLikeCount() {
    likeList = clientContext.get_web().get_lists().getByTitle(likeListName);

    var camlQuery = new SP.CamlQuery();
    var view = "<View><Query><Where><Eq><FieldRef Name='Title' /><Value Type='Text'>"+ pageID +"</Value></Eq></Where></Query></View>";
    camlQuery.set_viewXml(view);
    var listItems = likeList.getItems(camlQuery);

    clientContext.load(listItems);
    clientContext.executeQueryAsync(onQuerySuccess, onQueryFailed);

    function onQuerySuccess() {
        var ItemsCount = listItems.get_count();
        if(ItemsCount > 0){
          var items = listItems.getEnumerator();
            while (items.moveNext()) {
                var item = items.get_current();
                var itemValues = item.get_fieldValues();
                if(itemValues.UserName == userName){
                    likeItem = item;
                    $("#addlike").hide();
                    $("#removelike").show();
                }
            }
        }
        likeCount = ItemsCount;
        $("#like_span").text(ItemsCount + "点赞");
    }

    function onQueryFailed(sender, args) {
        console.log("获取失败： " + args.get_message());
    }
}

// 加载浏览数
function LoadViewCount() {
    viewList = clientContext.get_web().get_lists().getByTitle(viewListName);

    var camlQuery = new SP.CamlQuery();
    var view = "<View><Query><Where><Eq><FieldRef Name='Title' /><Value Type='Text'>"+ pageID +"</Value></Eq></Where></Query></View>";
    camlQuery.set_viewXml(view);
    var listItems = viewList.getItems(camlQuery);

    clientContext.load(listItems);
    clientContext.executeQueryAsync(onQuerySuccess, onQueryFailed);

     var viewCount = 0;
     var viewItem = null;

    function onQuerySuccess() {
        var ItemsCount = listItems.get_count();
        if(ItemsCount > 0){
          var items = listItems.getEnumerator();
            while (items.moveNext()) {
                viewItem = items.get_current();
                viewCount = viewItem.get_fieldValues().ViewCount;
            }
        }
        $("#view_span").text(viewCount + 1 + "查看");

        AddViewCount(viewCount, viewItem);
    }

    function onQueryFailed(sender, args) {
        $("#view_span").text(viewCount + 1 + "查看");
        AddViewCount(viewCount, viewItem);

        console.log("获取失败： " + args.get_message());
    }
}

// 添加浏览数量 
function AddViewCount(viewCount, viewItem) {
    if(viewItem == null){
        var itemCreateInfo = new SP.ListItemCreationInformation();
        viewItem = viewList.addItem(itemCreateInfo);
        viewItem.set_item('Title', pageID);
    
    }
    viewItem.set_item('ViewCount', viewCount + 1);
    viewItem.update();

    clientContext.load(viewItem);
    clientContext.executeQueryAsync(onQuerySuccess, onQueryFailed);

    function onQuerySuccess() {
        console.log("添加成功! ");
    }

    function onQueryFailed(sender, args) {
        console.log("添加失败： " + args.get_message());
    }
}

// 点赞
function AddLike(){
    var itemCreateInfo = new SP.ListItemCreationInformation();
    likeItem = likeList.addItem(itemCreateInfo);
    likeItem.set_item('Title', pageID);
    likeItem.set_item('UserName', userName);

    likeItem.update();
    clientContext.load(likeItem);
    clientContext.executeQueryAsync(onQuerySuccess, onQueryFailed);
    
    function onQuerySuccess() {
        $("#addlike").hide();
        $("#removelike").show();
        likeCount++;
        $("#like_span").text(likeCount + "点赞");
        console.log("添加成功! ");
    }

    function onQueryFailed(sender, args) {
        console.log("添加失败： " + args.get_message());
    }
}

// 移除点赞
function RemoveLike(){

    likeItem.deleteObject();
    clientContext.executeQueryAsync(onQuerySuccess, onQueryFailed);

    $("#removelike").hide();
    $("#addlike").show();

    function onQuerySuccess() {
        likeItem  = null;
        likeCount--;
        $("#like_span").text(likeCount + "点赞");
        console.log("移除成功! ");
    }

    function onQueryFailed(sender, args) {
        console.log("移除失败： " + args.get_message());
    }
}

// 获取链接参数
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]);
    return null;
}
