package com.team.silbomi.DAO;

import com.team.silbomi.VO.MarketReplyVO;
import com.team.silbomi.VO.MarketVO;
import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MarketDAOImpl implements MarketDAO {
	
	@Inject
	private SqlSession sql;
	
	private String namespace = "silbomi.mappers.marketMapper";

	public void register(MarketVO vo) throws Exception {
		sql.insert(namespace + ".register", vo);
	}

	public List<MarketVO> list() throws Exception {
		return sql.selectList(namespace + ".list");
	}

	public MarketVO viewOne(String goodsNum) throws Exception {
		return sql.selectOne(namespace + ".viewOne", goodsNum);
	}
	
	@Override
	public void deleteGoods(String goodsNum) throws Exception {

		sql.delete(namespace + ".deleteGoods", goodsNum);
	}

	@Override
	public void deleteGoodsReplys(String goodsNum) throws Exception {

		sql.delete(namespace + ".deleteGoodsReplys", goodsNum);
	}

	public void replyWrite(MarketReplyVO vo) throws Exception {
		sql.insert(namespace + ".replyWrite", vo);
	}

	public MarketReplyVO getReplyOne(String replyNum) throws Exception {
		return sql.selectOne(namespace + ".getReplyOne", replyNum);
	}

	public List<MarketReplyVO> replyList(String replyGroup) throws Exception {
		return sql.selectList(namespace + ".replyList", replyGroup);
	}

	public void replyStepWrite(MarketReplyVO vo) throws Exception {
		sql.insert(namespace + ".replyStepWrite", vo);
	}

	public int replyCount(String replyGroup) throws Exception {
		return sql.selectOne(namespace + ".replyCount", replyGroup);
	}

	public void addCount(String goodsNum) throws Exception {
		sql.update(namespace + ".addCount", goodsNum);
	}
	
	public void minusCount(String goodsNum) throws Exception {
		sql.update(namespace + ".minusCount", goodsNum);
	}

	public void replyDelete(String replyNum) throws Exception {
		sql.delete(namespace + ".replyDelete", replyNum);
	}

	
}