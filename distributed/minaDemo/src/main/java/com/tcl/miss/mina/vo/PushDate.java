package com.tcl.miss.mina.vo;

import java.util.Date;

public class PushDate {
	private String id;
	private String client_number;
	private String client_number_description;
	private String messages;
	private String system_name;
	private String status;
	private Date create_time;
	private Date update_time;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getClient_number() {
		return client_number;
	}

	public void setClient_number(String client_number) {
		this.client_number = client_number;
	}

	public String getClient_number_description() {
		return client_number_description;
	}

	public void setClient_number_description(String client_number_description) {
		this.client_number_description = client_number_description;
	}

	public String getMessages() {
		return messages;
	}

	public void setMessages(String messages) {
		this.messages = messages;
	}

	public String getSystem_name() {
		return system_name;
	}

	public void setSystem_name(String system_name) {
		this.system_name = system_name;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getCreate_time() {
		return create_time;
	}

	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}

	public Date getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(Date update_time) {
		this.update_time = update_time;
	}

}
