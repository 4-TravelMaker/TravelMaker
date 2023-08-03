package com.travelmaker.board.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString
public class TravelMaker {

	private int planNo; // 여행 계획 번호
	private String planTitle; // 여행 계획 제목
	private String planContent; // 여행 계획 내용
	private int dateLevel; // 여행 일정 단계(며칠 여행)
	private int memberNo; // 회원 번호
	private char planSt; // 여행 계획 삭제 여부(Y:삭제, N:삭제 안함)
	
}
