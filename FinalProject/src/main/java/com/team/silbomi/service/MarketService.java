package com.team.silbomi.service;

import com.team.silbomi.VO.MarketReplyVO;
import com.team.silbomi.VO.MarketVO;
import java.util.List;

public interface MarketService {
	
	
	public void register(MarketVO vo) throws Exception;

	public List<MarketVO> list() throws Exception;

	public MarketVO viewOne(String goodsNum) throws Exception;

	public void addCount(String goodsNum) throws Exception;
	
	public void deleteGoods(String goodsNum) throws Exception;

	public void replyWrite(MarketReplyVO vo) throws Exception;

	public void replyStepWrite(MarketReplyVO vo) throws Exception;

	public MarketReplyVO getReplyOne(String replyNum) throws Exception;

	public List<MarketReplyVO> replyList(String replyGroup) throws Exception;

	public int replyCount(String replyGroup) throws Exception;

	public void replyDelete(String replyNum, String goodsNum) throws Exception;
}