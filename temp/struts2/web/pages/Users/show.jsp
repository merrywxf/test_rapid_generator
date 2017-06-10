<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Users.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/Users/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/Users/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="id" id="id" value="%{model.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_EMAIL%></td>	
				<td><s:property value="%{model.email}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_PASSWD%></td>	
				<td><s:property value="%{model.passwd}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_ADMIN%></td>	
				<td><s:property value="%{model.admin}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_NAME%></td>	
				<td><s:property value="%{model.name}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_IMAGE%></td>	
				<td><s:property value="%{model.image}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Users.ALIAS_CREATED_AT%></td>	
				<td><s:property value="%{model.createdAt}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>