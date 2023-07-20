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

public class BoardLike {
	
	private int memberNo; // 회원번호
	private int boardNo; // 게시글 번호
	
}
