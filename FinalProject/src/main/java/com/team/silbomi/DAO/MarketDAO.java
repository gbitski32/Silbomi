package com.team.silbomi.DAO;

import java.util.List;

import com.team.silbomi.VO.MarketReplyVO;
import com.team.silbomi.VO.MarketVO;

public interface MarketDAO {
	
	public void register(MarketVO vo) throws Exception;

	public List<MarketVO> list() throws Exception;

	public MarketVO viewOne(String goodsNum) throws Exception;

	public void addCount(String goodsNum) throws Exception;
	
	public void minusCount(String goodsNum) throws Exception;
	
	public void deleteGoods(String goodsNum) throws Exception;
	
	public void deleteGoodsReplys(String goodsNum) throws Exception;

	public void replyWrite(MarketReplyVO vo) throws Exception;

	public void replyStepWrite(MarketReplyVO vo) throws Exception;

	public MarketReplyVO getReplyOne(String replyNum) throws Exception;

	public List<MarketReplyVO> replyList(String replyGroup) throws Exception;

	public int replyCount(String replyGroup) throws Exception;

	public void replyDelete(String replyNum) throws Exception;

	
	

}
