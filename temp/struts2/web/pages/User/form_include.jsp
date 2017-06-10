<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.cn.project.model.User@ALIAS_NAME}" key="name" value="%{model.name}" cssClass="" required="false" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=User.ALIAS_END_TIME%>:
		</td>	
		<td>
		<input value="${model.endTimeString}" onclick="WdatePicker({dateFmt:'<%=User.FORMAT_END_TIME%>'})" id="endTimeString" name="endTimeString"  maxlength="0" class="" />
		</td>
	</tr>
	
