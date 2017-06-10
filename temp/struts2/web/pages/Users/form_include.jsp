<%@page import="com.cn.project.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="id" name="id" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.cn.project.model.Users@ALIAS_EMAIL}" key="email" value="%{model.email}" cssClass="required validate-email " required="true" />
	
	
	<s:textfield label="%{@com.cn.project.model.Users@ALIAS_PASSWD}" key="passwd" value="%{model.passwd}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.cn.project.model.Users@ALIAS_ADMIN}" key="admin" value="%{model.admin}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.cn.project.model.Users@ALIAS_NAME}" key="name" value="%{model.name}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.cn.project.model.Users@ALIAS_IMAGE}" key="image" value="%{model.image}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.cn.project.model.Users@ALIAS_CREATED_AT}" key="createdAt" value="%{model.createdAt}" cssClass="required validate-number " required="true" />
	
