<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${users.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Users.ALIAS_EMAIL%>:
		</td>		
		<td>
		<form:input path="email" id="email" cssClass="required validate-email " maxlength="50" />
		<font color='red'><form:errors path="email"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Users.ALIAS_PASSWD%>:
		</td>		
		<td>
		<form:input path="passwd" id="passwd" cssClass="required " maxlength="50" />
		<font color='red'><form:errors path="passwd"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Users.ALIAS_ADMIN%>:
		</td>		
		<td>
		<form:input path="admin" id="admin" cssClass="required " maxlength="0" />
		<font color='red'><form:errors path="admin"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Users.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="required " maxlength="50" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Users.ALIAS_IMAGE%>:
		</td>		
		<td>
		<form:input path="image" id="image" cssClass="required " maxlength="500" />
		<font color='red'><form:errors path="image"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Users.ALIAS_CREATED_AT%>:
		</td>		
		<td>
		<form:input path="createdAt" id="createdAt" cssClass="required validate-number " maxlength="22" />
		<font color='red'><form:errors path="createdAt"/></font>
		</td>
	</tr>	
	
		