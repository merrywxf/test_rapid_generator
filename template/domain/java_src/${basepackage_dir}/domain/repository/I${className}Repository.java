<#assign className = table.className>   
package ${basepackage}.domain.repository;
import ${basepackage}.domain.model.${className};

public interface I${className}Repository {
	
	StateData<?> update${className}(${className} entity);
	
	StateData<?> insert${className}(${className} entity);
	
	
	
	
}
