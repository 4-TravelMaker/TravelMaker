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

public class MiddleCategoryType {
	private String middleCategoryCode;
	private String middleCategoryName;
	private String mainCategoryCode;
}
