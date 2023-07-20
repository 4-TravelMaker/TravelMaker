package com.travelmaker.member.model.vo;

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


public class MainCategoryType {
	
	private String mainCategoryCode;  // 대분류 코드
	private String mainCategoryName;  // 대분류 이름

}
