/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2017
 */

package com.cn.project.model;

public class Blogs extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	
	
	
	
	private java.lang.String id;
	private java.lang.String userId;
	private java.lang.String userName;
	private java.lang.String userImage;
	private java.lang.String name;
	private java.lang.String summary;
	private java.lang.String content;
	private java.lang.Double createdAt;

	public void setId(java.lang.String value) {
		this.id = value;
	}
	
	public java.lang.String getId() {
		return this.id;
	}
	public void setUserId(java.lang.String value) {
		this.userId = value;
	}
	
	public java.lang.String getUserId() {
		return this.userId;
	}
	public void setUserName(java.lang.String value) {
		this.userName = value;
	}
	
	public java.lang.String getUserName() {
		return this.userName;
	}
	public void setUserImage(java.lang.String value) {
		this.userImage = value;
	}
	
	public java.lang.String getUserImage() {
		return this.userImage;
	}
	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	public java.lang.String getName() {
		return this.name;
	}
	public void setSummary(java.lang.String value) {
		this.summary = value;
	}
	
	public java.lang.String getSummary() {
		return this.summary;
	}
	public void setContent(java.lang.String value) {
		this.content = value;
	}
	
	public java.lang.String getContent() {
		return this.content;
	}
	public void setCreatedAt(java.lang.Double value) {
		this.createdAt = value;
	}
	
	public java.lang.Double getCreatedAt() {
		return this.createdAt;
	}
}

