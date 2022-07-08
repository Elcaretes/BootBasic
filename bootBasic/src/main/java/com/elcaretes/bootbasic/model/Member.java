package com.elcaretes.bootbasic.model;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Member {
	
	private String memberPk;
	private String id;
	private String pw;
	private String gender;
	private List<String> favorite;
	private String profileImgSrc;
}
