<#assign className = table.className>   
package ${basepackage}.domain.service;
import ${basepackage}.domain.service.command.${className}Command;
public interface I${className}Service {
	
	StateData<?> update${className}(${className}Command entity);
	
	StateData<?> insert${className}(${className}Command entity);
	
	
	
	
}
