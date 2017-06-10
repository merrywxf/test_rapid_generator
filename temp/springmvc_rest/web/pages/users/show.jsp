<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Users.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="users"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/users'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${users.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_EMAIL%></td>	
				<td><c:out value='${users.email}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_PASSWD%></td>	
				<td><c:out value='${users.passwd}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_ADMIN%></td>	
				<td><c:out value='${users.admin}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_NAME%></td>	
				<td><c:out value='${users.name}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_IMAGE%></td>	
				<td><c:out value='${users.image}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_CREATED_AT%></td>	
				<td><c:out value='${users.createdAt}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>