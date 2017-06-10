<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Blogs.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="blogs"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/blogs'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${blogs.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_USER_ID%></td>	
				<td><c:out value='${blogs.userId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_USER_NAME%></td>	
				<td><c:out value='${blogs.userName}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_USER_IMAGE%></td>	
				<td><c:out value='${blogs.userImage}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_NAME%></td>	
				<td><c:out value='${blogs.name}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_SUMMARY%></td>	
				<td><c:out value='${blogs.summary}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_CONTENT%></td>	
				<td><c:out value='${blogs.content}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Blogs.ALIAS_CREATED_AT%></td>	
				<td><c:out value='${blogs.createdAt}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>