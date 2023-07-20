package com.travelmaker.board.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor

public class BoardType {
	
	private int boardCode; // 게시판 코드(1:지역/2:테마/3:여행리뷰/4:공지사항/5:일대일문의/6:FAQ)
	private String boardName; // 게시판 이름
}
