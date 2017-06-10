/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2017
 */

package com.cn;

public class Users implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;

	// 可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	// columns START
	private java.lang.String id;
	private java.lang.String email;
	private java.lang.String passwd;
	private java.lang.Boolean admin;
	private java.lang.String name;
	private java.lang.String image;
	private java.lang.Double createdAt;
	// columns END

	public void setId(java.lang.String value) {
		this.id = value;
	}

	public java.lang.String getId() {
		return this.id;
	}

	public void setEmail(java.lang.String value) {
		this.email = value;
	}

	public java.lang.String getEmail() {
		return this.email;
	}

	public void setPasswd(java.lang.String value) {
		this.passwd = value;
	}

	public java.lang.String getPasswd() {
		return this.passwd;
	}

	public void setAdmin(java.lang.Boolean value) {
		this.admin = value;
	}

	public java.lang.Boolean getAdmin() {
		return this.admin;
	}

	public void setName(java.lang.String value) {
		this.name = value;
	}

	public java.lang.String getName() {
		return this.name;
	}

	public void setImage(java.lang.String value) {
		this.image = value;
	}

	public java.lang.String getImage() {
		return this.image;
	}

	public void setCreatedAt(java.lang.Double value) {
		this.createdAt = value;
	}

	public java.lang.Double getCreatedAt() {
		return this.createdAt;
	}

}
