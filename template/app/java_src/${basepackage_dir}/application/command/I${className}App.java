<#assign className = table.className>   
package ${basepackage}.application.command;
import ig.archer.infrastructure.data.StateData;
import ${basepackage}.domain.service.command.${className}Command;
public interface I${className}App {
	
	StateData<?> update${className}(${className}Command entity);
	
	StateData<?> insert${className}(${className}Command entity);
	
	
	
	
}
