package com.penefit.moons.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.penefit.moons.domain.ClassVO;
import com.penefit.moons.domain.SuggestDTO;

public interface AdminServiceSongIm {
	
	public int createClass(int suggest_num);
	
	public String updateClass(ClassVO classvo, MultipartHttpServletRequest files);
	
	public String deleteClass(String class_code);
	
	public List<ClassVO> getClassList(String status, String keyword, int startNum);
	
	public List<ClassVO> searchClass(String class_subject);
	
	public List<SuggestDTO> getSuggestionList();
	
	public SuggestDTO getSuggestionInfo(int suggest_num);
	
	public ClassVO getClassOne(String class_code);
	
	public int rejectSuggestion(int suggest_num, String reject_reason);

	public List<ClassVO> classListSearch(String keyword);

	public void approveSuggestion(int suggest_num);
	
	public void gradeUpgrade(String member_id);

 	
}