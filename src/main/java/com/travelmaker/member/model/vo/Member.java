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

public class Member {

	private int memberNo; // 회원 번호
	private String memberId; // 회원 아이디
	private String memberPw; // 회원 비밀번호
	private String memberName; // 회원 이름
	private String memberNickname; // 회원 닉네임
	private String profileImage; // 회원 프로필 이미지
	private String memberAddress; // 회원 주소
	private String memberTheme; // 회원 선호 테마
	private int memberQuestion; // 회원 아이디, 비밀번호 찾기 질문
	private String memberAnswer; // 회원 아이디, 비밀번호 찾기 답변
	private String enrollDate; // 회원 가입일
	private String secessionFlag; // 탈퇴 여부
	
	
	// 회원 정보 조회용 매개변수 생성자
	public Member(int memberNo, String memberId, String memberName, String memberNickname, String memberAddress,
			String memberTheme, String enrollDate, String secessionFlag) {
		super();
		this.memberNo = memberNo;
		this.memberId = memberId;
		this.memberName = memberName;
		this.memberNickname = memberNickname;
		this.memberAddress = memberAddress;
		this.memberTheme = memberTheme;
		this.enrollDate = enrollDate;
		this.secessionFlag = secessionFlag;
	}
	
}

