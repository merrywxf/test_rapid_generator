<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${comments.id}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Comments.ALIAS_BLOG_ID%>:
		</td>		
		<td>
		<form:input path="blogId" id="blogId" cssClass="required " maxlength="50" />
		<font color='red'><form:errors path="blogId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Comments.ALIAS_USER_ID%>:
		</td>		
		<td>
		<form:input path="userId" id="userId" cssClass="required " maxlength="50" />
		<font color='red'><form:errors path="userId"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Comments.ALIAS_USER_NAME%>:
		</td>		
		<td>
		<form:input path="userName" id="userName" cssClass="required " maxlength="50" />
		<font color='red'><form:errors path="userName"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Comments.ALIAS_USER_IMAGE%>:
		</td>		
		<td>
		<form:input path="userImage" id="userImage" cssClass="required " maxlength="500" />
		<font color='red'><form:errors path="userImage"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Comments.ALIAS_CONTENT%>:
		</td>		
		<td>
		<form:input path="content" id="content" cssClass="required " maxlength="16777215" />
		<font color='red'><form:errors path="content"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Comments.ALIAS_CREATED_AT%>:
		</td>		
		<td>
		<form:input path="createdAt" id="createdAt" cssClass="required validate-number " maxlength="22" />
		<font color='red'><form:errors path="createdAt"/></font>
		</td>
	</tr>	
	
		