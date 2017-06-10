<#include "/custom.include">
<#include "/java_copyright.include">
<#assign className = table.className>   
<#assign classNameFirstLower = className?uncap_first>   
<#assign classNameLowerCase = className?lower_case>   
<#assign pkJavaType = table.idColumn.javaType>   

package ${basepackage}.controller;

import java.util.Map;

import java.text.SimpleDateFormat;
import java.util.Date;

import javacommon.base.BaseRestSpringController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.org.rapid_framework.page.Page;
import cn.org.rapid_framework.web.scope.Flash;

<#include "/java_imports.include">
@Controller
@RequestMapping("/${classNameLowerCase}")
public class ${className}Controller{
	
	@Resource
	private ${className}App;
	@Resource
	private ${className}QueryApp;
	
	

	
	
	@RequestMapping("/save")
	public String save${className}(${className} entity) {
		
	}
	@RequestMapping("/update")
	public String update${className}(${className} entity) {
		
	}
	@RequestMapping("/update")
	public String update${className}(${className} entity) {
		
	}
	
	
	
}

