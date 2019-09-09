package com.team.silbomi.service;

import com.team.silbomi.DAO.MarketDAO;
import com.team.silbomi.VO.MarketReplyVO;
import com.team.silbomi.VO.MarketVO;
import java.util.List;
import javax.inject.Inject;
import org.springframework.stereotype.Service;

@Service
public class MarketServiceImpl implements MarketService {
	
	@Inject
	private MarketDAO dao;

	public void register(MarketVO vo) throws Exception {
		dao.register(vo);
	}

	public List<MarketVO> list() throws Exception {
		return dao.list();
	}

	public MarketVO viewOne(String goodsNum) throws Exception {
		return dao.viewOne(goodsNum);
	}
	
	@Override
	public void deleteGoods(String goodsNum) throws Exception {

		dao.deleteGoodsReplys(goodsNum);
		dao.deleteGoods(goodsNum);
	}

	public void replyWrite(MarketReplyVO vo) throws Exception {
		dao.replyWrite(vo);
	}

	public MarketReplyVO getReplyOne(String replyNum) throws Exception {
		return dao.getReplyOne(replyNum);
	}

	public List<MarketReplyVO> replyList(String replyGroup) throws Exception {
		return dao.replyList(replyGroup);
	}

	public void replyStepWrite(MarketReplyVO vo) throws Exception {
		dao.replyStepWrite(vo);
	}

	public int replyCount(String replyGroup) throws Exception {
		return dao.replyCount(replyGroup);
	}

	public void addCount(String goodsNum) throws Exception {
		dao.addCount(goodsNum);
	}

	public void replyDelete(String replyNum, String goodsNum) throws Exception {
		dao.replyDelete(replyNum);
		dao.minusCount(goodsNum);
	}

	
	
	
}