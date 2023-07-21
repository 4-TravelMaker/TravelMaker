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
public class MemberQuery {
	
	private int memberQuestionCode; // 회원 아이디, 비밀번호 찾기 질문 코드
	private String memberQuestionContent; // 회원 아이디, 비밀번호 찾기 질문 내용
	
}
