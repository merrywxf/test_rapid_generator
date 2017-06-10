<#include "/macro.include"/>
<#include "/java_copyright.include">
<#assign className = table.className>   
<#assign classNameLower = className?uncap_first> 
package ${basepackage}.domain.service.basis;

import org.dozer.DozerBeanMapper;
import javax.annotation.Resource;

import ${basepackage}.domain.service.command.${className}Command;
import ${basepackage}.domain.service.I${className}Service;
import ${basepackage}.domain.model.${className};
import ${basepackage}.domain.repository.I${className}Repository;
public class ${className}Service implements I${className}Service {

	@Resource
    private I${className}Repository i${className}Repository;
    
    private DozerBeanMapper dozer = new DozerBeanMapper();
    
	@Override
	public StateData<?> update${className}(${className}Command entity){
		${className} model = dozer.map(entity, ${className}.class);
		int count = this.i${className}Repository.update${className}(model);
		return count;
	}
	@Override
	public StateData<?> insert${className}(${className}Command entity){
		${className} model = dozer.map(entity, ${className}.class);
		int count = this.i${className}Repository.insert${className}(model);
		return count;
	}
	
	
}
