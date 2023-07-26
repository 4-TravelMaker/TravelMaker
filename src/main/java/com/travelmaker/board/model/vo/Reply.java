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

public class Reply {
	
	private int replyNo; // 댓글 번호
	private String replyContent; // 댓글 내용
	private String createDate; // 댓글 작성일
	private int boardNo; // 게시글 번호(어떤 게시글의 댓글인지 확인)
	private int memberNo; // 회원 번호(댓글 작성자)
	private String replyState; // 댓글 삭제 여부(Y:삭제, N:삭제 안함)
	private String memberID; // 회원 아이디
}
