package com.travelmaker.board.model.vo;

import java.util.List;

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
	private String memberId; // 회원 아이디
	private String memberNickname; // 회원 닉네임
	private int boardCode; // 게시판 코드(1:지역/2:테마/3:여행계획/4:여행리뷰/5:공지사항/6:일대일문의)
	private int boardCategory; // 게시판 카테고리 번호
	private String boardState; // 게시글 삭제 여부(Y: 삭제, N:삭제 안함)
	private String thumbnail; // 게시판 썸네일 이미지
	private String profileImage; // 프로필 이미지
	private String categoryName; // 카테고리 이름
	private String boardImage; // 게시글 이미지 
	
}
