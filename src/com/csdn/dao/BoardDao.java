package com.csdn.dao;

import java.util.Iterator;

import org.springframework.stereotype.Repository;

import com.csdn.domain.Board;

@Repository("boardDao")
public class BoardDao extends BaseDao<Board>{
	protected final String GET_BOARD_NUM = "select count(f.boardId) from Board f";
	
	public long getBoardNum() {    
		Iterator iter = getHibernateTemplate().iterate(GET_BOARD_NUM);
        return ((Long)iter.next());
	}
}
