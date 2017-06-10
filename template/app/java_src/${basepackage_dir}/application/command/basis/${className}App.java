<#assign className = table.className>   
package ${basepackage}.application.command.basis;

import ig.archer.infrastructure.data.StateData;
import javax.annotation.Resource;
import ig.archer.infrastructure.data.type.State;

import ${basepackage}.application.command.I${className}App;

import ${basepackage}.domain.service.command.${className}Command;
import ${basepackage}.domain.service.I${className}Service;

public class ${className}App implements I${className}App {
	private static final long serialVersionUID = 5454155825314635342L;
 	@Resource
    private I${className}Service i${className}Service;
    
	@Override
	public StateData<?> update${className}(${className}Command entity){
		int count = this.i${className}Service.update${className}(entity);
        if (count > 0) {
            return new StateData<Integer>(State.Success, "保存成功", count);
        }
        return new StateData<Integer>(State.Failure, "保存失败");
	}
	@Override
	public StateData<?> insert${className}(${className}Command entity){
		int count = this.ii${className}Service.updatei${className}(entity);
        if (count > 0) {
            return new StateData<Integer>(State.Success, "保存成功", count);
        }
        return new StateData<Integer>(State.Failure, "保存失败");
	}
	
	
}
