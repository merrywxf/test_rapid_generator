<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.cn.project.model.Blogs@ALIAS_USER_ID}" key="userId" value="%{model.userId}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.cn.project.model.Blogs@ALIAS_USER_NAME}" key="userName" value="%{model.userName}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.cn.project.model.Blogs@ALIAS_USER_IMAGE}" key="userImage" value="%{model.userImage}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.cn.project.model.Blogs@ALIAS_NAME}" key="name" value="%{model.name}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.cn.project.model.Blogs@ALIAS_SUMMARY}" key="summary" value="%{model.summary}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.cn.project.model.Blogs@ALIAS_CONTENT}" key="content" value="%{model.content}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.cn.project.model.Blogs@ALIAS_CREATED_AT}" key="createdAt" value="%{model.createdAt}" cssClass="required validate-number " required="true" />
	
