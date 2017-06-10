<%@page import="com.cn.project.model.*" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Users.TABLE_ALIAS%> 维护</title>
	
	<script src="${ctx}/scripts/rest.js" ></script>
	<link href="<c:url value="/widgets/simpletable/simpletable.css"/>" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/widgets/simpletable/simpletable.js"/>"></script>
	
	<script type="text/javascript" >
		$(document).ready(function() {
			// 分页需要依赖的初始化动作
			window.simpleTable = new SimpleTable('queryForm',${page.thisPageNumber},${page.pageSize},'${pageRequest.sortColumns}');
		});
	</script>
</rapid:override>

<rapid:override name="content">
	<form id="queryForm" name="queryForm" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=Users.ALIAS_EMAIL%></td>		
					<td>
						<input value="${query.email}" id="email" name="email" maxlength="50"  class="validate-email "/>
					</td>
					<td class="tdLabel"><%=Users.ALIAS_PASSWD%></td>		
					<td>
						<input value="${query.passwd}" id="passwd" name="passwd" maxlength="50"  class=""/>
					</td>
					<td class="tdLabel"><%=Users.ALIAS_ADMIN%></td>		
					<td>
						<input value="${query.admin}" id="admin" name="admin" maxlength="0"  class=""/>
					</td>
					<td class="tdLabel"><%=Users.ALIAS_NAME%></td>		
					<td>
						<input value="${query.name}" id="name" name="name" maxlength="50"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Users.ALIAS_IMAGE%></td>		
					<td>
						<input value="${query.image}" id="image" name="image" maxlength="500"  class=""/>
					</td>
					<td class="tdLabel"><%=Users.ALIAS_CREATED_AT%></td>		
					<td>
						<input value="${query.createdAt}" id="createdAt" name="createdAt" maxlength="22"  class="validate-number "/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/users'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/users/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('${ctx}/users','items',document.forms.queryForm)"/>
		<div>
	
	</div>
	
	<div class="gridTable">
	
		<simpletable:pageToolbar page="${page}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
	
		<table width="100%"  border="0" cellspacing="0" class="gridBody">
		  <thead>
			  
			  <tr>
				<th style="width:1px;"> </th>
				<th style="width:1px;"><input type="checkbox" onclick="setAllCheckboxState('items',this.checked)"></th>
				
				<!-- 排序时为th增加sortColumn即可,new SimpleTable('sortColumns')会为tableHeader自动增加排序功能; -->
				<th sortColumn="email" ><%=Users.ALIAS_EMAIL%></th>
				<th sortColumn="passwd" ><%=Users.ALIAS_PASSWD%></th>
				<th sortColumn="admin" ><%=Users.ALIAS_ADMIN%></th>
				<th sortColumn="name" ><%=Users.ALIAS_NAME%></th>
				<th sortColumn="image" ><%=Users.ALIAS_IMAGE%></th>
				<th sortColumn="created_at" ><%=Users.ALIAS_CREATED_AT%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="${item.id}"></td>
				
				<td><c:out value='${item.email}'/>&nbsp;</td>
				<td><c:out value='${item.passwd}'/>&nbsp;</td>
				<td><c:out value='${item.admin}'/>&nbsp;</td>
				<td><c:out value='${item.name}'/>&nbsp;</td>
				<td><c:out value='${item.image}'/>&nbsp;</td>
				<td><c:out value='${item.createdAt}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/users/${item.id}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/users/${item.id}/edit">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/users/${item.id}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
				</td>
			  </tr>
			  
		  	  </c:forEach>
		  </tbody>
		</table>
	
		<simpletable:pageToolbar page="${page}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
		
	</div>
	</form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>