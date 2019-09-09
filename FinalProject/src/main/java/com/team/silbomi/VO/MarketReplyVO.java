package com.team.silbomi.VO;

import java.util.Date;

public class MarketReplyVO {
	private String replyNum;
	private String replyWriter;
	private String replyContent;
	private Date replyPostDate;
	private String replyGroup;
	private String replySubGroup;
	private int replyStep;

	public String getReplyNum() {
		return this.replyNum;
	}

	public void setReplyNum(String replyNum) {
		this.replyNum = replyNum;
	}

	public String getReplyWriter() {
		return this.replyWriter;
	}

	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}

	public String getReplyContent() {
		return this.replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public Date getReplyPostDate() {
		return this.replyPostDate;
	}

	public void setReplyPostDate(Date replyPostDate) {
		this.replyPostDate = replyPostDate;
	}

	public String getReplyGroup() {
		return this.replyGroup;
	}

	public void setReplyGroup(String replyGroup) {
		this.replyGroup = replyGroup;
	}

	public String getReplySubGroup() {
		return this.replySubGroup;
	}

	public void setReplySubGroup(String replySubGroup) {
		this.replySubGroup = replySubGroup;
	}

	public int getReplyStep() {
		return this.replyStep;
	}

	public void setReplyStep(int replyStep) {
		this.replyStep = replyStep;
	}
}