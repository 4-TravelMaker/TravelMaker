package com.travelmaker.member.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class BoardImage {

	
	private int imageNo; // 이미지 번호
	private String imageReName; // 이미지 저장 경로 + 변경명
	private String imageOriginal; // 이미지 원본명
	private int boardNo; // 게시글 번호
	private int imageLevel; // 이미지 위치 지정번호
}
