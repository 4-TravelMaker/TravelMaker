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


public class SubCategoryType {
	
	private String subCategoryCode;   // 소분류 코드
	private String subCategoryName;   // 소분류 이름
	private String middleCategoryCode; // 중분류 코드

}
