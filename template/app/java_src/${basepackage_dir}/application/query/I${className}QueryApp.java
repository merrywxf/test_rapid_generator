<#assign className = table.className>   
package ${basepackage}.application.query;
import ig.archer.infrastructure.data.StateData;


public interface I${className}QueryApp {
	
	StateData<?> get${className}ById(int id);
	
	
	
	
	
}
