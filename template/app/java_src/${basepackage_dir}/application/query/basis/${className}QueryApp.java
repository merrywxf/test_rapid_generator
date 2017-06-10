<#assign className = table.className>   
package ${basepackage}.application.query.basis;
import javax.annotation.Resource;
import ig.zeus.file.application.query.I${className}QueryApp;
import ig.archer.infrastructure.data.StateData;
import ig.archer.infrastructure.data.type.State;
import ig.zeus.file.repository.repository.I${className}QueryRepository;
import ig.zeus.file.repository.viewmodel.${className}ViewModel;

public class ${className}QueryApp implements I${className}QueryApp {
 	@Resource
    private I${className}QueryRepository i${className}QueryRepository;
    
	@Override
	public StateData<?> get${className}ById(int id){
		${className}ViewModel viewModel = this.i${className}QueryRepository.get${className}ById(id);
        if (viewModel != null) {
            return new StateData<${className}ViewModel>(State.Success, "请求成功！", viewModel);
        } else {
            return new StateData<${className}ViewModel>(State.Failure, "请求失败！");
        }
	}
	
	
}
