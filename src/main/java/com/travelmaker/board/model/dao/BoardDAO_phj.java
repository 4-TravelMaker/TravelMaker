package com.travelmaker.board.model.dao;

import static com.travelmaker.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.travelmaker.board.model.vo.Category;
import com.travelmaker.board.model.vo.Region;
import com.travelmaker.board.model.vo.Reply;

public class BoardDAO_phj {
	
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private Properties prop = null;
	
	public BoardDAO_phj() {
		try {
			prop = new Properties();
			
			String filePath = BoardDAO_phj.class.getResource("/com/travelmaker/sql/board/board-sql-phj.xml").getPath(); 
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	/** 지역별 카테고리 조회 DAO
	 * @param conn
	 * @param ctgrNo
	 * @return ctgr
	 * @throws Exception
	 */
	public List<Category> selectRegion(Connection conn, int ctgrNo) throws Exception{
		
		List<Category> cList = new ArrayList<Category>();

		try {
			String sql = prop.getProperty("selectctgr");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, ctgrNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Category ctgr =  new Category();
				
				ctgr.setCategoryName(  rs.getString("CTGR_NM"));
				ctgr.setBoardTitle( rs.getString("BOARD_TITLE"));
				ctgr.setImgRename( rs.getString("IMG_RENAME"));
				
				cList.add(ctgr);
			}
			
		}finally {
			close(rs);
			close(pstmt);
		}
		return cList;
	}


	/** 지역 사진/제목 조회 Service
	 * @param conn
	 * @param ctgrNo
	 * @return rList
	 * @throws Exception
	 */
	public List<Region> regionTitle(Connection conn, int ctgrNo) throws Exception {
		
		List<Region> rList = new ArrayList<Region>();
		
		try {
			String sql = prop.getProperty("regionTitle");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, ctgrNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Region rg = new Region();
				
				rg.setBoardTitle( rs.getString("BOARD_TITLE"));
				rg.setImgRename( rs.getString("IMG_RENAME"));
				rg.setBoardNo( rs.getInt("BOARD_NO"));
				rg.setCategorySubNo( rs.getInt("PARENT_CTGR_NO"));
				
				rList.add(rg);
			}
			
			
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return rList;
	}
			
}
	
