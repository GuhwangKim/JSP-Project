package service;


import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.Classe;
import dao.ClasseDao;
import dao.LocDao;

public class TchRegProAction implements CommandProcess {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("TchRegProAction Start...");
		request.setCharacterEncoding("utf-8");
		
		try {
			
			//나중에 로그인 완료시 변경
			int tchno = 1;
			
			
			ClasseDao cd = ClasseDao.getInstance();
			Classe tchclass = new Classe();
			LocDao ld = LocDao.getInstance();
			
			// 이미지 받기
			String filename = "";
			String uploadFilename = "";
			
			int maxSize = 5 * 1024 * 1024;
			String fileSave = "/fileSave/main_imgs";
			//meta data
			String realPath = request.getSession().getServletContext().getRealPath(fileSave);
			
			System.out.println("realPath->"+realPath);
			// 업로드
			MultipartRequest multi = new MultipartRequest(request, realPath, maxSize, "utf-8", new DefaultFileRenamePolicy());
			
			Enumeration en = multi.getFileNames();
			
			// db 저장 용도 -> 지금은 db저장 못하니깐 단순 화면출력 대체
			while(en.hasMoreElements()) {
				String filename1 = (String) en.nextElement();
				filename = multi.getFilesystemName(filename1);
				String original = multi.getOriginalFileName(filename1);
				String type = multi.getContentType(filename1);
				File file = multi.getFile(filename1); 
				
				System.out.println("realPath->"+realPath);
				System.out.println("파라미터 이름->"+filename1);
				System.out.println("실제 파일 이름->"+original);
				System.out.println("저장된 파일 이름->"+filename);
				System.out.println("파일 타입->"+type);
				
				if(file != null) {
					System.out.println("크기 -> "+file.length());
				} 
				
			}
			tchclass.setMain_img("fileSave\\main_imgs\\"+filename);
			// 이미지 받기 끝
			
			
			tchclass.setClass_name(multi.getParameter("class_name"));
			tchclass.setGrade(Integer.parseInt(multi.getParameter("grade")));
			tchclass.setKeyword(multi.getParameter("keyword"));
			tchclass.setLec_time(multi.getParameter("lec_time"));
			tchclass.setLec_duration(multi.getParameter("lec_duration"));
			tchclass.setTeacher_intro(multi.getParameter("teacher_intro"));
			tchclass.setLec_intro(multi.getParameter("lec_intro"));
			tchclass.setCurriculum(multi.getParameter("curriculum"));
			
			System.out.println("tchclass 저장중");
			
			//subject 받기
			int b_subject = Integer.parseInt(multi.getParameter("b_subject"));
			int s_subject400 = Integer.parseInt(multi.getParameter("s_subject400"));
			int s_subject500 = Integer.parseInt(multi.getParameter("s_subject500"));
			int subjectno = 0;
			
			if(b_subject==100||b_subject==200||b_subject==300) {
				subjectno = b_subject;
			}else if(b_subject==400){
				subjectno = s_subject400;
			}else {
				subjectno = s_subject500;
			}
			System.out.println("subjectno->"+subjectno);
			tchclass.setSubjectno(subjectno);
			System.out.println("tchclass 과목 입력 완료");
			
			// tchno(지정), classno -> seq.nextval()
			tchclass.setTchno(tchno);
			int result = cd.insert(tchclass);
			System.out.println("classe 데이터 저장 완료");
			
			int insertLoc_result = 0;
			
			if(result>0) {
				
				int classno = cd.getClassno(tchno);
				
				//loc 테이블 저장
				String b_loc = multi.getParameter("b_loc");
				String s_loc100 = multi.getParameter("s_loc100");
				String s_loc200 = multi.getParameter("s_loc200");
				
				String b_loc2 = multi.getParameter("b_loc2");
				String s_loc100_2 = multi.getParameter("s_loc100_2");
				String s_loc200_2 = multi.getParameter("s_loc200_2");
				
				String b_loc3 = multi.getParameter("b_loc3");
				String s_loc100_3 = multi.getParameter("s_loc100_3");
				String s_loc200_3 = multi.getParameter("s_loc200_3");
				
				String str_locno = null;
				String str_locno2 = null;
				String str_locno3 = null;
				
				System.out.println("b_loc->"+b_loc);
				System.out.println("b_loc2->"+b_loc2);
				System.out.println("b_loc3->"+b_loc3);
				
				
				if(b_loc.equals("100")) {
					str_locno = s_loc100;
				} else if(b_loc.equals("200")){
					str_locno = s_loc200;
				}
				System.out.println("str_locno->"+str_locno);
				insertLoc_result = ld.insert(classno, str_locno);
				System.out.println("loc1 저장 결과->"+insertLoc_result);
				
				
//				if(b_loc2!=null || !b_loc2.equals("")) {
				if(b_loc2!=null&&!b_loc2.equals("")) {
					if(b_loc2.equals("100")) {
						str_locno2 = s_loc100_2;
					} else if(b_loc.equals("200")){
						str_locno2 = s_loc200_2;
					}
					System.out.println("str_locno2->"+str_locno2);
					insertLoc_result += ld.insert(classno, str_locno2);
					System.out.println("loc2 저장 결과->"+insertLoc_result);
				}
				
//				if(b_loc3!=null || !b_loc3.equals("")) {
				if(b_loc3!=null&&!b_loc3.equals("")) {
					if(b_loc3.equals("100")) {
						str_locno3 = s_loc100_3;
					} else if(b_loc.equals("200")){
						str_locno3 = s_loc200_3;
					}
					System.out.println("str_locno3->"+str_locno3);
					insertLoc_result += ld.insert(classno, str_locno3);
					System.out.println("loc3 저장 결과->"+insertLoc_result);
				}
			}
			
			
			
			System.out.println("여기까진 OK");
			
			request.setAttribute("result", result);						// class insert
			request.setAttribute("insertLoc_result", insertLoc_result);	// loc insert
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
		return "tchRegPro.jsp";
	}

}
