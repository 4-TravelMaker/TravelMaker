package com.travelmaker.board.model.vo;

import java.util.List;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class BoardDetail {
   
   private int boardNo;
   private String boardTitle;
   private String boardContent;
   private String createDate;
   private int readCount;
   private int likeCount;
   private String memberNickname;
   private String memberId;
   private String profileImage;
   private int memberNo;
   private String boardName;
   
   
   private List<BoardImage> imageList;
   private List<Integer> likeList;
   
}