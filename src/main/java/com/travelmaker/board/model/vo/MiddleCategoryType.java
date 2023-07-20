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

public class MiddleCategoryType {
	
	private String middleCategoryCode; // 중분류 코드
	private String middleCategoryName; // 중분류 이름
	private String mainCategoryCode; // 대분류 코드
	
}
