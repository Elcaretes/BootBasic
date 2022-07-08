package com.elcaretes.bootbasic.web.rest;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.elcaretes.bootbasic.model.Member;

@Controller
public class MemberAPI {

	protected final Logger log = LoggerFactory.getLogger(this.getClass());

	// 회원가입처리
	@RequestMapping(value = "/insertMember.ajax", method = RequestMethod.POST)
	public ResponseEntity<Member> insertUser(HttpServletRequest request, MultipartFile profileImg, Member member ) {

		log.info("Welcome /user/insertUser.ajax");
		log.info(member.toString());
		log.info( profileImg.getOriginalFilename() );

		try {

			String fileName = profileImg.getOriginalFilename();
			
			String webapp_path = request.getSession().getServletContext().getRealPath( File.separator );
			System.out.println("webapp_path >>> : " + webapp_path);

			String save_path = File.separator + "upload" + File.separator + "profile" + File.separator + member.getId() + File.separator;
			System.out.println("save_path >>> : " + save_path);
			
			String uploadPath = webapp_path + save_path;
			
			File uploadFolder = new File( uploadPath );
			if( !uploadFolder.exists() ) {
				uploadFolder.mkdirs();
			}

			fileName = member.getId() + "_" + System.currentTimeMillis() + "_" + fileName;
			File file = new File( uploadPath + fileName );

			byte[] bytes = profileImg.getBytes();
			OutputStream out = null;
			out = new FileOutputStream(file);
			BufferedOutputStream b_out_stream = new BufferedOutputStream(out,1024);
			b_out_stream.write(bytes);
			b_out_stream.close();
			out.close();
			
			log.info( file.getPath() );
			
		} catch (IOException e) {
			e.printStackTrace();
		}

		return ResponseEntity.ok().body( member );
	}

}
