<#assign className = table.className>   
package ${basepackage}.repository.repository;
import ig.zeus.file.repository.viewmodel.${className}ViewModel;

public interface I${className}QueryRepository {
	
	${className}ViewModel get${className}ById(int id);
	
}
