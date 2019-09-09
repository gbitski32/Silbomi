package com.team.silbomi.VO;

import java.sql.Date;

public class MarketVO {
	private String goodsNum;
	private String goodsCategory;
	private String goodsName;
	private String goodsPrice;
	private String goodsStock;
	private String goodsWriter;
	private String goodsThumnail;
	private String goodsImg;
	private String goodsContent;
	private Date goodsPostDate;
	private String del_type;
	private int goodsVerify;
	private int replyCount;

	public MarketVO() {
	}

	public MarketVO(String goodsNum, String goodsCategory, String goodsName, String goodsPrice, String goodsStock,
			String goodsWriter, String goodsThumnail, String goodsImg, String goodsContent, Date goodsPostDate,
			String del_type, int goodsVerify) {
		this.goodsNum = goodsNum;
		this.goodsCategory = goodsCategory;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.goodsStock = goodsStock;
		this.goodsWriter = goodsWriter;
		this.goodsThumnail = goodsThumnail;
		this.goodsImg = goodsImg;
		this.goodsContent = goodsContent;
		this.goodsPostDate = goodsPostDate;
		this.del_type = del_type;
		this.goodsVerify = goodsVerify;
	}

	public String getGoodsNum() {
		return this.goodsNum;
	}

	public void setGoodsNum(String goodsNum) {
		this.goodsNum = goodsNum;
	}

	public String getGoodsCategory() {
		return this.goodsCategory;
	}

	public void setGoodsCategory(String goodsCategory) {
		this.goodsCategory = goodsCategory;
	}

	public String getGoodsName() {
		return this.goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsPrice() {
		return this.goodsPrice;
	}

	public void setGoodsPrice(String goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public String getGoodsStock() {
		return this.goodsStock;
	}

	public void setGoodsStock(String goodsStock) {
		this.goodsStock = goodsStock;
	}

	public String getGoodsWriter() {
		return this.goodsWriter;
	}

	public void setGoodsWriter(String goodsWriter) {
		this.goodsWriter = goodsWriter;
	}

	public String getGoodsThumnail() {
		return this.goodsThumnail;
	}

	public void setGoodsThumnail(String goodsThumnail) {
		this.goodsThumnail = goodsThumnail;
	}

	public String getGoodsImg() {
		return this.goodsImg;
	}

	public void setGoodsImg(String goodsImg) {
		this.goodsImg = goodsImg;
	}

	public String getGoodsContent() {
		return this.goodsContent;
	}

	public void setGoodsContent(String goodsContent) {
		this.goodsContent = goodsContent;
	}

	public Date getGoodsPostDate() {
		return this.goodsPostDate;
	}

	public void setGoodsPostDate(Date goodsPostDate) {
		this.goodsPostDate = goodsPostDate;
	}

	public String getDel_type() {
		return this.del_type;
	}

	public void setDel_type(String del_type) {
		this.del_type = del_type;
	}

	public int getGoodsVerify() {
		return this.goodsVerify;
	}

	public void setGoodsVerify(int goodsVerify) {
		this.goodsVerify = goodsVerify;
	}

	public int getReplyCount() {
		return this.replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
}