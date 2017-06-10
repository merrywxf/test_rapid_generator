<#assign className = table.className>   
package ${basepackage}.domain.service.command;
import org.dozer.Mapping;
public class ${className}Command implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	<#list table.columns as column>
	@Mapping("${column.columnNameLower}")
	private ${column.javaType} ${column.columnNameLower};
	</#list>

	<@generateJavaColumns/>
}

<#macro generateJavaColumns>
	<#list table.columns as column>
	public void set${column.columnName}(${column.javaType} value) {
		this.${column.columnNameLower} = value;
	}
	
	public ${column.javaType} get${column.columnName}() {
		return this.${column.columnNameLower};
	}
	</#list>
</#macro>
