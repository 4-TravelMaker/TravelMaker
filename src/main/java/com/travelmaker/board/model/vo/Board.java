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

public class Board {
	
	private int boardNo; // 게시글 번호
	private String boardTitle; // 게시글 제목
	private String boardContent; // 게시글 내용
	private String createDate; // 게시글 작성일
	private int readCount; // 조회수
	private int likeCount; // 좋아요 수
	private int memberNo; // 회원 번호(작성자)
	private int boardCode; // 게시판 코드(1:지역/2:테마/3:여행리뷰/4:공지사항/5:일대일문의/6:FAQ)
	private String mainCategoryCode; // 대분류 코드(L:지역/T:테마/N:선택안함)
	private String middleCategoryCode; // 중분류 코드(N:선택안함)
	private String subCategoryCode; // 소분류 코드(N:선택안함)
	
}
