package ${basepackage}.service.config;

import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.context.annotation.AnnotationBeanNameGenerator;
import org.springframework.util.ClassUtils;

/**
 * 自定义容器中命令
 * </p>
 * 本类只用于repository的扫描
 * </p>
 * 其他扫描使用spring默认规则命名
 */
public class MyBeanNameGenerator extends AnnotationBeanNameGenerator {

	@Override
	protected String buildDefaultBeanName(BeanDefinition definition) {
		String name = ClassUtils.getShortName(definition.getBeanClassName());
		if (name == null || name.length() == 0) {
			return name;
		}
		char chars[] = name.toCharArray();
		chars[0] = Character.toLowerCase(chars[0]);
		String ss = new String(chars);
		return ss;
	}

}
