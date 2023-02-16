package com.penefit.moons.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.penefit.moons.domain.ClassVO;
import com.penefit.moons.domain.SuggestDTO;

public interface AdminServiceSongIm {
	
	public SuggestDTO createClass(String suggest_num);
	
	public String updateClass(ClassVO classvo, MultipartHttpServletRequest files);
	
	public String deleteClass(String class_code);
	
	public List<ClassVO> getClassList();
	
	public List<ClassVO> searchClass(String class_subject);
	
	public List<SuggestDTO> getSuggestionList();
	
}
