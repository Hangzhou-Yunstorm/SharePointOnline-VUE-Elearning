<%@ Page Language="C#" MasterPageFile="~masterurl/default.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" %>

<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
	<div class="col-md-12 row" id="home_content">
        <div class="col-md-8 left_train" id="left_train">
            <div class="col-md-12 row" id="page_list">
                <a href="###" onclick="FilterPage('all')" v-bind:class="'all'==activeFilter?'activePage':''">
				全部课程</a>
                <a href="###" onclick="FilterPage('video')" v-bind:class="'video'==activeFilter?'activePage':''">
				视频课程</a>
            </div>
            <div class="col-md-12 row" id="page_sort">
                <a href="###" onclick="SoutPage('order', false)" v-bind:class="'order'==activeSort?'activea':''">
				默认</a>
				<a href="###" style="display:none;" onclick="SoutPage('commentCount', true)" v-bind:class="'commentCount'==activeSort?'activea':''">
				最热</a>
                <a href="###" onclick="SoutPage('date', true)" v-bind:class="'date'==activeSort?'activea':''">
				最新</a>
                <a href="###" onclick="SoutPage('likeCount', true)" v-bind:class="'likeCount'==activeSort?'activea':''">
				最赞</a>
            </div>
            <div class="col-md-12 row page_train" v-for="page in Page_Json">
                <div class="col-md-3">
                    <img v-bind:src="page.image" class="thum_img" alt="image" />
                </div>
                <div class="col-md-9 page_text">
                    <p class="page_title">
                        <a v-bind:href="page.url" target="_blank">
						{{page.title}}</a>
                        <span class="like_span">
						{{page.likeCount}}点赞&nbsp;&nbsp;|&nbsp;&nbsp;{{page.commentCount}}查看</span>
                    </p>
                    <p class="page_type" style="display:none">
					类型：{{page.pageType}}</p>
                    <p class="page_type">课程数：{{page.pageCount}}</p>
                    <p class="page_author">
					作者：{{page.author}}&nbsp;&nbsp;|&nbsp;&nbsp;{{page.modified}}</p>
                    <p class="page_description">{{page.description}}</p>
                    <p class="page_btn"><a v-bind:href="page.url" target="_blank">
					立即阅读</a></p>
                </div>
            </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-3 popular">
            <div class="col-md-12 popular_title">
                热门推荐
               </div>
            <div class="col-md-12 page_slider" v-for="slider in Slider_Json">
                <a v-bind:href="slider.url">
                    <img v-bind:src="slider.image" class="slider_img" alt="image" />
                </a>
            </div>
        </div>
    </div>
    <div class="kefu_img" onclick="ShowVT()">
        <img src="Images/kefu.png" alt="kefu" />智能客服
    </div>
    <div class="xiaovt">
       <div class="closeImg"><img onclick="HideVT()" src="Images/close.png" alt="kefu" /></div>
       <iframe src="https://openai.yunstrategy.com/854aa82320bb46eea7bc6c6ad2224f6f" height="100%" width="100%"></iframe>
    </div>

    <link href="Style/Home.css" rel="stylesheet" />
    <script src="Scripts/Home.js" type="text/javascript"></script>
</asp:Content>
