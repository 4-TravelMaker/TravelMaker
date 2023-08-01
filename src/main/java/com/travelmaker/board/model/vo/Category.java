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

public class Category {
	
	private int boardNo;
	private int categoryNo;
	private String categoryName;
	private int categorySubNo;
	private String regionName;
	private String boardTitle;
	private String imgRename;
	private int imgLevel;
}
