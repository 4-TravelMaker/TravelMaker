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


public class Region {
	
	private String boardTitle;
	private String boardContent;
	private String imgRename;
	private String imgOriginal;
	private int boardNo;
	private int categorySubNo;
	private String categoryName;

}
