<%@ Page language="C#" MasterPageFile="~masterurl/default.master"    Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=16.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document"  %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:ListFormPageTitle runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl00&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<span class="die">
		<SharePoint:ListProperty Property="LinkTitle" runat="server" id="ID_LinkTitle" __designer:Preview="" __designer:Values="&lt;P N=&#39;Property&#39; T=&#39;LinkTitle&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ID_LinkTitle&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/>
	</span>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server">
	<img src="/_layouts/15/images/blank.gif?rev=47" width='1' height='1' alt="" data-accessibility-nocheck="true"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
<script src="/sites/IT-eLearning/HomePage/Scripts/jquery.SP.Type.js" type="text/javascript"></script>
<SharePoint:UIVersionedContent UIVersion="4" runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;UIVersion&#39; T=&#39;4&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl01&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;">
	<ContentTemplate>
	<div style="padding-left:5px">
	</ContentTemplate>
</SharePoint:UIVersionedContent>
	<table class="ms-core-tableNoSpace" id="onetIDListForm" role="presentation">
	 <tr>
	  <td>
	 <WebPartPages:WebPartZone runat="server" FrameType="None" ID="Main" Title="loc:Main" __designer:Preview="&lt;Regions&gt;&lt;Region Name=&quot;0&quot; Editable=&quot;True&quot; Content=&quot;&quot; NamingContainer=&quot;True&quot; /&gt;&lt;/Regions&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot; id=&quot;Main&quot;&gt;
	&lt;tr&gt;
		&lt;td style=&quot;white-space:nowrap;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
			&lt;tr&gt;
				&lt;td style=&quot;white-space:nowrap;&quot;&gt;主要&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;&lt;/td&gt;
	&lt;/tr&gt;&lt;tr&gt;
		&lt;td style=&quot;height:100%;&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;border-color:Gray;border-width:1px;border-style:Solid;width:100%;height:100%;&quot;&gt;
			&lt;tr valign=&quot;top&quot;&gt;
				&lt;td _designerRegion=&quot;0&quot;&gt;&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;2&quot; border=&quot;0&quot; style=&quot;width:100%;&quot;&gt;
					&lt;tr&gt;
						&lt;td style=&quot;height:100%;&quot;&gt;&lt;/td&gt;
					&lt;/tr&gt;
				&lt;/table&gt;&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;&lt;/td&gt;
	&lt;/tr&gt;
&lt;/table&gt;" __designer:Values="&lt;P N=&#39;Title&#39; ID=&#39;1&#39; T=&#39;主要&#39; /&gt;&lt;P N=&#39;HeaderText&#39; T=&#39;loc:Main&#39; /&gt;&lt;P N=&#39;DisplayTitle&#39; R=&#39;1&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;2&#39; T=&#39;Main&#39; /&gt;&lt;P N=&#39;FrameType&#39; E=&#39;0&#39; /&gt;&lt;P N=&#39;PartChromeType&#39; E=&#39;2&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;3&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;3&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;" __designer:Templates="&lt;Group Name=&quot;ZoneTemplate&quot;&gt;&lt;Template Name=&quot;ZoneTemplate&quot; Content=&quot;&quot; /&gt;&lt;/Group&gt;"><ZoneTemplate>
<WebPartPages:ListFormWebPart runat="server" __MarkupType="xmlmarkup" WebPart="true" __WebPartId="{39F36AEA-39DC-4AB0-868E-C239ADE40AB8}" __Preview="&lt;div class=&quot;ms-webpart-chrome ms-webpart-chrome-fullWidth &quot;&gt;
	&lt;div class=&quot;ms-webpart-chrome-title&quot; id=&quot;WebPart_ChromeTitle&quot;&gt;
		&lt;span title=&quot;TestList&quot; id=&quot;WebPartTitle&quot; class=&quot;js-webpart-titleCell&quot;&gt;&lt;div class=&quot;ms-webpart-titleText&quot;&gt;&lt;nobr&gt;&lt;span&gt;TestList&lt;/span&gt;&lt;span id=&quot;WebPartCaption&quot;&gt;&lt;/span&gt;&lt;/nobr&gt;&lt;/div&gt;&lt;/span&gt;
	&lt;/div&gt;&lt;div WebPartID=&quot;39f36aea-39dc-4ab0-868e-c239ade40ab8&quot; HasPers=&quot;false&quot; id=&quot;WebPart&quot; width=&quot;100%&quot; class=&quot;ms-WPBorder noindex ms-wpContentDivSpace &quot; allowDelete=&quot;false&quot; style=&quot;&quot; &gt;&lt;div id=&quot;WebPartContent&quot;&gt;		&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;
			&lt;tr&gt;
				&lt;td valign=&quot;top&quot; style=&quot;direction:ltr;&quot;&gt;
				&lt;div&gt;
					&lt;table class=&quot;ms-formtoolbar&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; border=&quot;0&quot; width=&quot;100%&quot;&gt;
						&lt;tr&gt;
							&lt;td width=&quot;99%&quot; class=&quot;ms-toolbar&quot; nowrap=&quot;nowrap&quot;&gt;
							&lt;img src=&quot;/_layouts/15/images/blank.gif?rev=47&quot; width=&quot;1&quot; height=&quot;18&quot; alt=&quot;&quot;&gt;&lt;/td&gt;
							&lt;td class=&quot;ms-toolbar&quot; nowrap=&quot;true&quot;&gt;
							&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;
								&lt;tr&gt;
									&lt;td align=&quot;right&quot; width=&quot;100%&quot; nowrap=&quot;nowrap&quot;&gt;
									&lt;input type=&quot;submit&quot; name=&quot;g_39f36aea_39dc_4ab0_868e_c239ade40ab8$ctl00$ctl00&quot; value=&quot;确定  &quot; class=&quot;ms-ButtonHeightWidth&quot; /&gt;
									&lt;/td&gt;
								&lt;/tr&gt;
							&lt;/table&gt;
							&lt;/td&gt;
							&lt;td class=&quot;ms-separator&quot;&gt;&amp;#160;&lt;/td&gt;
							&lt;td class=&quot;ms-toolbar&quot; nowrap=&quot;true&quot;&gt;
							&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;
								&lt;tr&gt;
									&lt;td align=&quot;right&quot; width=&quot;100%&quot; nowrap=&quot;nowrap&quot;&gt;
									&lt;input type=&quot;submit&quot; name=&quot;g_39f36aea_39dc_4ab0_868e_c239ade40ab8$ctl00$ctl01&quot; value=&quot;取消 &quot; class=&quot;ms-ButtonHeightWidth&quot; /&gt;
									&lt;/td&gt;
								&lt;/tr&gt;
							&lt;/table&gt;
							&lt;/td&gt;
						&lt;/tr&gt;
					&lt;/table&gt;
					&lt;table class=&quot;ms-toolbar&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; border=&quot;0&quot; width=&quot;100%&quot;&gt;
						&lt;tr&gt;
							&lt;td class=&quot;ms-toolbar&quot; nowrap=&quot;true&quot;&gt;
							&lt;table cellpadding=&quot;1&quot; cellspacing=&quot;0&quot;&gt;
								&lt;tr&gt;
									&lt;td class=&quot;ms-toolbar&quot; nowrap=&quot;nowrap&quot;&gt;&lt;em&gt;
									[预览列表表单 Web 部件]&lt;/em&gt;&lt;/td&gt;
								&lt;/tr&gt;
							&lt;/table&gt;
							&lt;/td&gt;
							&lt;td width=&quot;99%&quot; class=&quot;ms-toolbar&quot; nowrap=&quot;nowrap&quot;&gt;
							&lt;img src=&quot;/_layouts/15/images/blank.gif?rev=47&quot; width=&quot;1&quot; height=&quot;18&quot; alt=&quot;&quot;&gt;&lt;/td&gt;
							&lt;td class=&quot;ms-toolbar&quot; nowrap=&quot;true&quot;&gt;
							&lt;span id=&quot;reqdFldTxt&quot; style=&quot;white-space: nowrap;padding-right: 3px;&quot; class=&quot;ms-descriptiontext&quot;&gt;
							&lt;span class=&quot;ms-formvalidation&quot;&gt;*&lt;/span&gt; 表示必须填写的字段
							&lt;/span&gt;&lt;/td&gt;
						&lt;/tr&gt;
					&lt;/table&gt;
					&lt;table class=&quot;ms-formtable&quot; style=&quot;margin-top: 8px;&quot; border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;
						&lt;tr&gt;
							&lt;td nowrap=&quot;true&quot; valign=&quot;top&quot; width=&quot;190px&quot; class=&quot;ms-formlabel&quot;&gt;
							&lt;nobr&gt;栏名 1&lt;span class=&quot;ms-formvalidation&quot;&gt;
							*&lt;/span&gt;&lt;/nobr&gt; &lt;/td&gt;
							&lt;td valign=&quot;top&quot; class=&quot;ms-formbody&quot; width=&quot;400px&quot; id=&quot;SPFieldText&quot;&gt;
							&lt;span dir=&quot;none&quot;&gt;
							&lt;input name=&quot;g_39f36aea_39dc_4ab0_868e_c239ade40ab8$ctl00$textbox1&quot; type=&quot;text&quot; value=&quot;栏值 1&quot; id=&quot;g_39f36aea_39dc_4ab0_868e_c239ade40ab8_ctl00_textbox1&quot; class=&quot;ms-long&quot; /&gt;&lt;/span&gt;&lt;/td&gt;
						&lt;/tr&gt;
						&lt;tr&gt;
							&lt;td nowrap=&quot;true&quot; valign=&quot;top&quot; width=&quot;190px&quot; class=&quot;ms-formlabel&quot;&gt;
							&lt;nobr&gt;栏名 2&lt;/nobr&gt; &lt;/td&gt;
							&lt;td valign=&quot;top&quot; class=&quot;ms-formbody&quot; width=&quot;400px&quot; id=&quot;SPFieldText&quot;&gt;
							&lt;span dir=&quot;none&quot;&gt;
							&lt;input name=&quot;g_39f36aea_39dc_4ab0_868e_c239ade40ab8$ctl00$textbox2&quot; type=&quot;text&quot; value=&quot;栏值 2&quot; id=&quot;g_39f36aea_39dc_4ab0_868e_c239ade40ab8_ctl00_textbox2&quot; class=&quot;ms-long&quot; /&gt;&lt;/span&gt;&lt;/td&gt;
						&lt;/tr&gt;
						&lt;tr&gt;
							&lt;td nowrap=&quot;true&quot; valign=&quot;top&quot; width=&quot;190px&quot; class=&quot;ms-formlabel&quot;&gt;
							&lt;nobr&gt;栏名 3&lt;/nobr&gt; &lt;/td&gt;
							&lt;td valign=&quot;top&quot; class=&quot;ms-formbody&quot; width=&quot;400px&quot; id=&quot;SPFieldText&quot;&gt;
							&lt;span dir=&quot;none&quot;&gt;
							&lt;input name=&quot;g_39f36aea_39dc_4ab0_868e_c239ade40ab8$ctl00$textbox3&quot; type=&quot;text&quot; value=&quot;栏值 3&quot; id=&quot;g_39f36aea_39dc_4ab0_868e_c239ade40ab8_ctl00_textbox3&quot; class=&quot;ms-long&quot; /&gt;&lt;/span&gt;&lt;/td&gt;
						&lt;/tr&gt;
					&lt;/table&gt;
					&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;
						&lt;tr&gt;
							&lt;td class=&quot;ms-formline&quot;&gt;
							&lt;img src=&quot;/_layouts/15/images/blank.gif?rev=47&quot; width=&quot;1&quot; height=&quot;1&quot; alt=&quot;&quot;&gt;&lt;/td&gt;
						&lt;/tr&gt;
					&lt;/table&gt;
					&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot; style=&quot;padding-top: 7px&quot;&gt;
						&lt;tr&gt;
							&lt;td width=&quot;100%&quot;&gt;
							&lt;table class=&quot;ms-formtoolbar&quot; cellpadding=&quot;2&quot; cellspacing=&quot;0&quot; border=&quot;0&quot; width=&quot;100%&quot;&gt;
								&lt;tr&gt;
									&lt;td width=&quot;99%&quot; class=&quot;ms-toolbar&quot; nowrap=&quot;nowrap&quot;&gt;
									&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot;&gt;
										&lt;tr&gt;
											&lt;td nowrap=&quot;nowrap&quot; class=&quot;ms-descriptiontext&quot; id=&quot;onetidinfoblock1&quot;&gt;
											Created at [date] by &lt;nobr&gt;&lt;span&gt;
											&lt;a href=&quot;/_layouts/15/userdisp.aspx?ID=1&quot;&gt;
											User Name&lt;/a&gt;&lt;img border=&quot;0&quot; height=&quot;1&quot; width=&quot;3&quot; src=&quot;/_layouts/15/images/blank.gif?rev=47&quot; alt=&quot;&quot; /&gt;&lt;img name=&quot;imnmark&quot; border=&quot;0&quot; height=&quot;12&quot; width=&quot;12&quot; src=&quot;/_layouts/15/images/blank.gif?rev=47&quot; alt=&quot;&quot; sip=&quot;&quot; id=&quot;imn0&quot; /&gt;&lt;/span&gt;&lt;/nobr&gt;&amp;#160;
											&lt;/td&gt;
										&lt;/tr&gt;
										&lt;tr&gt;
											&lt;td nowrap=&quot;nowrap&quot; class=&quot;ms-descriptiontext&quot; id=&quot;onetidinfoblock2&quot;&gt;
											Last modified at [date] by &lt;nobr&gt;
											&lt;span&gt;
											&lt;a href=&quot;/_layouts/15/userdisp.aspx?ID=1&quot;&gt;
											User Name&lt;/a&gt;&lt;img border=&quot;0&quot; height=&quot;1&quot; width=&quot;3&quot; src=&quot;/_layouts/15/images/blank.gif?rev=47&quot; alt=&quot;&quot; /&gt;&lt;img name=&quot;imnmark&quot; border=&quot;0&quot; height=&quot;12&quot; width=&quot;12&quot; src=&quot;/_layouts/15/images/blank.gif?rev=47&quot; alt=&quot;&quot; sip=&quot;&quot; id=&quot;imn1&quot; /&gt;&lt;/span&gt;&lt;/nobr&gt;&amp;#160;
											&lt;/td&gt;
										&lt;/tr&gt;
									&lt;/table&gt;
									&lt;/td&gt;
									&lt;td class=&quot;ms-toolbar&quot; nowrap=&quot;true&quot;&gt;
									&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;
										&lt;tr&gt;
											&lt;td align=&quot;right&quot; width=&quot;100%&quot; nowrap=&quot;nowrap&quot;&gt;
											&lt;input type=&quot;submit&quot; name=&quot;g_39f36aea_39dc_4ab0_868e_c239ade40ab8$ctl00$ctl03&quot; value=&quot;确定  &quot; class=&quot;ms-ButtonHeightWidth&quot; /&gt;
											&lt;/td&gt;
										&lt;/tr&gt;
									&lt;/table&gt;
									&lt;/td&gt;
									&lt;td class=&quot;ms-separator&quot;&gt;&amp;#160;&lt;/td&gt;
									&lt;td class=&quot;ms-toolbar&quot; nowrap=&quot;true&quot;&gt;
									&lt;table cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;
										&lt;tr&gt;
											&lt;td align=&quot;right&quot; width=&quot;100%&quot; nowrap=&quot;nowrap&quot;&gt;
											&lt;input type=&quot;submit&quot; name=&quot;g_39f36aea_39dc_4ab0_868e_c239ade40ab8$ctl00$ctl04&quot; value=&quot;取消 &quot; class=&quot;ms-ButtonHeightWidth&quot; /&gt;
											&lt;/td&gt;
										&lt;/tr&gt;
									&lt;/table&gt;
									&lt;/td&gt;
								&lt;/tr&gt;
							&lt;/table&gt;
							&lt;/td&gt;
						&lt;/tr&gt;
					&lt;/table&gt;
				&lt;/div&gt;
				&lt;/td&gt;
			&lt;/tr&gt;
		&lt;/table&gt;
&lt;/div&gt;&lt;div class=&quot;ms-clear&quot;&gt;&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;" >
<WebPart xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://schemas.microsoft.com/WebPart/v2">
  <Title>TestList</Title>
  <FrameType>Default</FrameType>
  <Description />
  <IsIncluded>true</IsIncluded>
  <ZoneID>Main</ZoneID>
  <PartOrder>1</PartOrder>
  <FrameState>Normal</FrameState>
  <Height />
  <Width />
  <AllowRemove>true</AllowRemove>
  <AllowZoneChange>true</AllowZoneChange>
  <AllowMinimize>true</AllowMinimize>
  <AllowConnect>true</AllowConnect>
  <AllowEdit>true</AllowEdit>
  <AllowHide>true</AllowHide>
  <IsVisible>true</IsVisible>
  <DetailLink />
  <HelpLink />
  <HelpMode>Modeless</HelpMode>
  <Dir>Default</Dir>
  <PartImageSmall />
  <MissingAssembly>无法导入此 Web 部件。</MissingAssembly>
  <PartImageLarge />
  <IsIncludedFilter />
  <ExportControlledProperties>true</ExportControlledProperties>
  <ConnectionID>00000000-0000-0000-0000-000000000000</ConnectionID>
  <ID>g_39f36aea_39dc_4ab0_868e_c239ade40ab8</ID>
  <ListName xmlns="http://schemas.microsoft.com/WebPart/v2/ListForm">{028228A8-69B2-4049-9818-DF6B41544467}</ListName>
  <ListId xmlns="http://schemas.microsoft.com/WebPart/v2/ListForm">028228a8-69b2-4049-9818-df6b41544467</ListId>
  <PageType xmlns="http://schemas.microsoft.com/WebPart/v2/ListForm">PAGE_EDITFORM</PageType>
  <FormType xmlns="http://schemas.microsoft.com/WebPart/v2/ListForm">6</FormType>
  <ControlMode xmlns="http://schemas.microsoft.com/WebPart/v2/ListForm">Edit</ControlMode>
  <ViewFlag xmlns="http://schemas.microsoft.com/WebPart/v2/ListForm">1048576</ViewFlag>
  <ViewFlags xmlns="http://schemas.microsoft.com/WebPart/v2/ListForm">Default</ViewFlags>
  <ListItemId xmlns="http://schemas.microsoft.com/WebPart/v2/ListForm">0</ListItemId>
</WebPart>
</WebPartPages:ListFormWebPart>
</ZoneTemplate></WebPartPages:WebPartZone>
	  </td>
	 </tr>
	</table>
<SharePoint:UIVersionedContent UIVersion="4" runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;UIVersion&#39; T=&#39;4&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl02&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;">
	<ContentTemplate>
	</div>
	</ContentTemplate>
</SharePoint:UIVersionedContent>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
	<SharePoint:DelegateControl runat="server" ControlId="FormCustomRedirectControl" AllowMultipleControls="true" __designer:Preview="" __designer:Values="&lt;P N=&#39;ControlId&#39; T=&#39;FormCustomRedirectControl&#39; /&gt;&lt;P N=&#39;AllowMultipleControls&#39; T=&#39;True&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl03&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"/>
	<SharePoint:UIVersionedContent UIVersion="4" runat="server" __designer:Preview="" __designer:Values="&lt;P N=&#39;UIVersion&#39; T=&#39;4&#39; /&gt;&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl05&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;"><ContentTemplate>
		<SharePoint:CssRegistration Name="forms.css" runat="server"/>
	</ContentTemplate></SharePoint:UIVersionedContent>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleLeftBorder" runat="server">
<table cellpadding="0" height="100%" width="100%" cellspacing="0">
 <tr><td class="ms-areaseparatorleft"><img src="/_layouts/15/images/blank.gif?rev=47" width='1' height='1' alt="" data-accessibility-nocheck="true"/></td></tr>
</table>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaClass" runat="server">
<script type="text/javascript" id="onetidPageTitleAreaFrameScript">
	if (document.getElementById("onetidPageTitleAreaFrame") != null)
	{
		document.getElementById("onetidPageTitleAreaFrame").className="ms-areaseparator";
	}
</script>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderBodyAreaClass" runat="server">
<SharePoint:StyleBlock runat="server" __designer:Preview="&lt;style type=&quot;text/css&quot;&gt;
.ms-bodyareaframe {
	padding: 8px;
	border: none;
}

table{
    width: 100%;
}
&lt;/style&gt;" __designer:Values="&lt;P N=&#39;ID&#39; ID=&#39;1&#39; T=&#39;ctl06&#39; /&gt;&lt;P N=&#39;Page&#39; ID=&#39;2&#39; /&gt;&lt;P N=&#39;TemplateControl&#39; R=&#39;2&#39; /&gt;&lt;P N=&#39;AppRelativeTemplateSourceDirectory&#39; R=&#39;-1&#39; /&gt;">
.ms-bodyareaframe {
	padding: 8px;
	border: none;
}

table{
    width: 100%;
}
</SharePoint:StyleBlock>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderBodyLeftBorder" runat="server">
<div class='ms-areaseparatorleft'><img src="/_layouts/15/images/blank.gif?rev=47" width='8' height='100%' alt="" data-accessibility-nocheck="true"/></div>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleRightMargin" runat="server">
<div class='ms-areaseparatorright'><img src="/_layouts/15/images/blank.gif?rev=47" width='8' height='100%' alt="" data-accessibility-nocheck="true"/></div>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderBodyRightMargin" runat="server">
<div class='ms-areaseparatorright'><img src="/_layouts/15/images/blank.gif?rev=47" width='8' height='100%' alt="" data-accessibility-nocheck="true"/></div>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderTitleAreaSeparator" runat="server"/>
