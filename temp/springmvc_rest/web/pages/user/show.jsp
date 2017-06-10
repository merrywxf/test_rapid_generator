<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=User.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="user"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/user'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="id" name="id" value="${user.id}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_NAME%></td>	
				<td><c:out value='${user.name}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_END_TIME%></td>	
				<td><c:out value='${user.endTimeString}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>