﻿<% @ Control  Language="C#" Inherits="PageAdmin.paform"%>
<% @ Import NameSpace="System.Data"%>
<% @ Import NameSpace="System.Data.OleDb"%>
<%Start();%>
<tr id='tr_imgs_title'><td class='tdhead'>标题<span style='color:#ff0000'>*</span></td><td><input type=text name='title' id='title' value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("title"));}%>"  maxlength="200"><span id="title_tip"></span></td></tr>
<tr id='tr_imgs_titlepic'><td class='tdhead'>标题图片</td><td><input ondblclick="if(this.value!='')window.open(this.value)" type=text name='titlepic' id='titlepic'  value="<%if(post=="add"){Response.Write("");}else{Response.Write(r("titlepic"));}%>"  ><a href="javascript:delete_file('imgs','titlepic',<%=InforId%>)" id="delete_titlepic" style="padding-left:2px;display:<%=r("titlepic")==""?"none":""%>" title='删除图片'><img src=/e/images/public/del.gif border=0></a><a id='upload_titlepic' href="javascript:open_upload('<%=SiteId%>','','image','imgs','titlepic','titlepic')" style="display:<%=r("titlepic")==""?"":"none"%>"><img src='/e/images/public/attachimg.gif' border=0  hspace=2 alt='上传图片' align=absbottom></a><span id="titlepic_tip"></span></td></tr><tr id='tr_imgs_content'><td class='tdhead'>详细内容</td><td><textarea name='content' id='content' style="width:100%;height:300px"   ><%if(post=="add"){Response.Write("");}else{Response.Write(r("content"));}%></textarea><script charset="utf-8" src="/e/incs/kindeditor/kindeditor.js" type="text/javascript"></script><script type="text/javascript">var KE_content;KindEditor.ready(function(K) {KE_content= K.create("#content",{uploadJson :kindeditor_uploadJson,fileManagerJson :kindeditor_fileManagerJson,allowFileManager :true,items :kindeditor_NormalItems,filterMode :false,extraFileUploadParams:{siteid:"<%=SiteId%>"}});});</script><span id="content_tip"></span><table width='100%' border='0' cellspacing='0' cellpadding='0'><tr><td><input name='saveimage' type='checkbox' value='1'/>保存远程图片(<input type='checkbox' name='addwatermark' value='1' checked/>加水印)&nbsp;<input name='autotitlepic' type='checkbox' value='1'/>提取第<input type='text' name='titlepic_num' value='1' size='2' onkeyup=if(isNaN(value))execCommand('undo') onblur=if(this.value=='')execCommand('undo')>张图为缩略图(缩略图宽<input type='text' name='thumbnail_width' id='thumbnail_width' value='400' size='2' onkeyup=if(isNaN(value))execCommand('undo') onblur=if(this.value=='')execCommand('undo')>px&nbsp;高<input type='text' name='thumbnail_height' id='thumbnail_height' value='400' size='2' onkeyup=if(isNaN(value))execCommand('undo') onblur=if(this.value=='')execCommand('undo')>px)</td></tr></table></td></tr>
<tr id='tr_imgs_thedate'><td class='tdhead'>发布日期<span style='color:#ff0000'>*</span></td><td><input type=text name='thedate' id='thedate' value="<%if(post=="add"){Response.Write(""==""?DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"):"");}else{Response.Write(DateTime.Parse(r("thedate")).ToString("yyyy-MM-dd HH:mm:ss"));}%>"  maxlength="50"><a href="javascript:open_calendar('thedate',1)"><img src=/e/images/icon/date.gif border=0 height=20 hspace=2 align=absbottom></a><span id="thedate_tip"></span></td></tr>
<tr id='tr_imgs_pa_imgs'><td class='tdhead'>图片组<br><input type='button' value='增加图片' class='f_bt' onclick="open_files('<%=SiteId%>','0','imgs','pa_imgs','images','<%=InforId%>')"><br><input type='button' id='Edit_pa_imgs' value='刷新图片' class='f_bt' onclick="Iframe_Submit('iframe_pa_imgs')" style='display:none'></td><td><div id='pa_imgs_box' style='width:98%;border:1px solid #cccccc;background-color:#ffffff;padding:5px 5px 5px 5px'><input type=hidden value='0' name='pa_imgs' id='pa_imgs'><iframe  id='iframe_pa_imgs' name='iframe_pa_imgs' allowtransparency='true' src='/e/aspx/file_list.aspx?id=<%=InforId%>&table=imgs&field=pa_imgs&fieldtype=images&sid=<%=SiteId%>&from=master' frameborder=0 scroling=auto height=150px width=100% marginwidth=0 marginheight=0 align=center></iframe></div><span id="pa_imgs_tip"></span></td></tr>
<input type='hidden' name='mustname' value='标题,发布日期,'><input type='hidden' name='mustfield' value='title,thedate,'><input type='hidden' name='musttype' value='text,text,'>
<script  type='text/javascript'>
function imgs_zdycheck(){
KE_content.sync();
Iframe_Submit("iframe_pa_imgs","1")
return true;
}
</script>
<%End();%>





