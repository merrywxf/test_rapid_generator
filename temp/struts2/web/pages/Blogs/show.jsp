<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Blogs.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/Blogs/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/Blogs/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_USER_ID%></td>	
				<td><s:property value="%{model.userId}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_USER_NAME%></td>	
				<td><s:property value="%{model.userName}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_USER_IMAGE%></td>	
				<td><s:property value="%{model.userImage}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_NAME%></td>	
				<td><s:property value="%{model.name}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_SUMMARY%></td>	
				<td><s:property value="%{model.summary}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_CONTENT%></td>	
				<td><s:property value="%{model.content}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_CREATED_AT%></td>	
				<td><s:property value="%{model.createdAt}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>