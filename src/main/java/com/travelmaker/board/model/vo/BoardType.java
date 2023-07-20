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
	
	private int boardCode; // 게시판 코드
	private String boardName; // 게시판 이름
}
