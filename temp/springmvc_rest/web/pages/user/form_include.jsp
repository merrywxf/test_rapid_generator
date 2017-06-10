<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="id" name="id" value="${user.id}"/>

	<tr>	
		<td class="tdLabel">
			<%=User.ALIAS_NAME%>:
		</td>		
		<td>
		<form:input path="name" id="name" cssClass="" maxlength="32" />
		<font color='red'><form:errors path="name"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=User.ALIAS_END_TIME%>:
		</td>		
		<td>
		<input value="${user.endTimeString}" onclick="WdatePicker({dateFmt:'<%=User.FORMAT_END_TIME%>'})" id="endTimeString" name="endTimeString"  maxlength="0" class="" />
		<font color='red'><form:errors path="endTime"/></font>
		</td>
	</tr>	
	
		