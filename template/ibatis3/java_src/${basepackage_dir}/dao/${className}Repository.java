<#assign className = table.className>   
<#assign classNameLower = className?uncap_first>   
package ${basepackage}.dao;
import ${basepackage}.model.${className};


public class ${className}Repository{
	
	
	
	 int save${className}(${className} entity);
	 
	 int update${className}(${className} entity);
	
	

}
