<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Comments.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="comments"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/comments'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${comments.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Comments.ALIAS_BLOG_ID%></td>	
				<td><c:out value='${comments.blogId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Comments.ALIAS_USER_ID%></td>	
				<td><c:out value='${comments.userId}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Comments.ALIAS_USER_NAME%></td>	
				<td><c:out value='${comments.userName}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Comments.ALIAS_USER_IMAGE%></td>	
				<td><c:out value='${comments.userImage}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Comments.ALIAS_CONTENT%></td>	
				<td><c:out value='${comments.content}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Comments.ALIAS_CREATED_AT%></td>	
				<td><c:out value='${comments.createdAt}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>