package ${basepackage}.service.config;

import ${basepackage}.service.data.Logger;
import ${basepackage}.service.data.StateMessage;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.FilterType;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

/**
 * 扫描配置类
 */
@Component
@ComponentScan(basePackages = "${basepackage}.application.query.basis,${basepackage}.application.command.basis,${basepackage}.domain.service.basis", includeFilters = {
        @Filter(type = FilterType.CUSTOM, classes = MyTypeFilter.class)})
@MapperScan(basePackages = "${basepackage}.repository.repository", nameGenerator = MyBeanNameGenerator.class)
public class ScanCustomComponent {
    @Autowired
    private Environment environment;

   
}
