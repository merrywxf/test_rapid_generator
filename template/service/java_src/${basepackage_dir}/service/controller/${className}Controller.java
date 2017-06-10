<#assign className = table.className>   
<#assign classNameLowerCase = className?lower_case> 
package ${basepackage}.service.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import ig.archer.infrastructure.data.StateData;
import ig.archer.infrastructure.data.type.State;
import ${basepackage}.application.command.I${className}App;
import ${basepackage}.application.query.I${className}QueryApp;
import ${basepackage}.domain.service.command.${className}Command;
import ${basepackage}.repository.viewmodel.${className}ViewModel;
import ${basepackage}.service.data.Logger;
import ${basepackage}.service.data.StateMessage;

@RestController
@RequestMapping("/${classNameLowerCase}")
public class ${className}Controller{
 	@Resource
    private I${className}QueryApp i${className}QueryApp;
    @Resource
    private I${className}App i${className}App;
    @Resource
    private Logger logger;
    @Resource
    private StateMessage message;
    
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    Object insert(${className}Command entity) {
        message = StateMessage.from(${className}App.insert${className}(entity));
        logger.debug(message.toString());
        return message;
    }
	
	
}
