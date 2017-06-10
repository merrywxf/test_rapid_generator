<#include "/macro.include"/>
<#assign className = table.className>   
package ${basepackage}.domain.model;
import ig.archer.domain.object.identity.AggregateRoot;
public class ${className} extends AggregateRoot implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	<#list table.columns as column>
	private ${column.javaType} ${column.columnNameLower};
	</#list>

	<@generateJavaColumns/>
	@Override
	public void dispose() {
	
	}
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
