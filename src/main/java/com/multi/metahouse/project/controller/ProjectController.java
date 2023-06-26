package com.multi.metahouse.project.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.core.io.ResourceLoader;

import org.springframework.data.domain.Page;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.multi.metahouse.domain.dto.project.ProjectAddOption;
import com.multi.metahouse.domain.dto.project.ProjectContentsDTO;
import com.multi.metahouse.domain.dto.project.ProjectFormDTO;
import com.multi.metahouse.domain.dto.project.ProjectPackageForm;
import com.multi.metahouse.domain.dto.project.ProjectPackageSingleForm;
import com.multi.metahouse.domain.dto.project.ProjectPackageTripleForm;

import com.multi.metahouse.domain.entity.project.AddOptionEntity;

import com.multi.metahouse.domain.entity.asset.AssetEntity;

import com.multi.metahouse.domain.entity.project.ProjectContentsEntity;
import com.multi.metahouse.domain.entity.project.ProjectEntity;
import com.multi.metahouse.domain.entity.project.ProjectPackageSingleEntity;
import com.multi.metahouse.domain.entity.project.ProjectPackageTripleEntity;
import com.multi.metahouse.domain.entity.user.User;
import com.multi.metahouse.project.service.ProjectFileUploadLogicService;
import com.multi.metahouse.project.service.ProjectService;

@Controller
public class ProjectController {
	ProjectFileUploadLogicService fileService;
	ProjectService projectService;
	ResourceLoader resourceLoader;

	@Autowired
	public ProjectController(ProjectFileUploadLogicService fileService, ProjectService projectService,
			ResourceLoader resourceLoader) {
		super();
		this.fileService = fileService;
		this.projectService = projectService;
		this.resourceLoader = resourceLoader;
	}

	////////////////////// 승언님 파트////////////////////////

	/*------------------------------------- 승언님 파트 ------------------------------------ */

//	프로젝트 마켓 상품목록 보기
	@RequestMapping("project/main")
	public String projectMarket(Model model, String pageNo, String category1, String category2) {
		Page<ProjectEntity> projectlistPage = projectService.list(category1, category2, Integer.parseInt(pageNo));
		List<ProjectEntity> projectlist = projectlistPage.getContent();

		model.addAttribute("pjPage", projectlistPage);
		model.addAttribute("projectlist", projectlist);
		model.addAttribute("maxPage", 5);

		return "project/main";
	}

	// 프로젝트 상세보기
	@RequestMapping("project/detail")
	public String showGigs1() {
		return "project/market_detail";
	}

//	프로젝트 구매하기
	@GetMapping("project/purchase")
	public String puchaseGigs() {
		return "order/project_purchase";
	}

//	프로젝트 구인 상품목록 보기
	@RequestMapping("project/main2")
	public String gigs2() {
		return "project/z_project2_main";
	}

//	프로젝트 구인 상세페이지
	@RequestMapping("project/detail2")
	public String showGigs2() {
		return "project/z_project2_detail";
	}

	/*----------------------------------------- 민우님 파트 -------------------------------------------*/
	// "판매 등록" 페이지 반환 
	@GetMapping("project/my-products")
	public String showProductList() {
		
		return "project/project_product_list";
	}
	
	// 프로젝트 설명 입력하는 페이지 반환
	@GetMapping("project/forms/descriptions")
	public String writeForm(HttpSession session) {
		session.setAttribute("creator_id", "user1");

		return "project/projectform01";
	}

	// 패키지 + 추가옵션 설정하는 페이지 반환
	@GetMapping("project/forms/packages")
	public String writePakcageForm(HttpSession session) {
		System.out.println("session : " + session.getAttribute("projectForm"));
		return "project/projectform02";
	}

	@GetMapping("project/forms/preview")
	public String getFormPreview(HttpSession session, Model model) {

		// 세션에 삼단패키지가 들어갔는지 ,단일패키지가 들어갔는지
		if (session.getAttribute("projectPackageTripleForm") == null) {
			model.addAttribute("package", "single");
			List<ProjectAddOption> optionList = ((ProjectPackageSingleForm) session
					.getAttribute("projectPackageSingleForm")).getProjectAddOptionList();
			model.addAttribute("optionList", optionList);
		} else {
			model.addAttribute("package", "triple");
			List<ProjectAddOption> optionList = ((ProjectPackageTripleForm) session
					.getAttribute("projectPackageTripleForm")).getProjectAddOptionList();
			model.addAttribute("optionList", optionList);
		}

		return "project/projectform03";
	}

	@RequestMapping(value = "project/forms-ajax", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String saveIntoSessionAjax(HttpSession session, ProjectFormDTO projectForm) {

		// 세션 저장
		session.setAttribute("projectForm", projectForm);

		return "/metahaus/project/forms/packages";
	}

	@RequestMapping(value = "project/single-package-ajax", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String saveIntoSessionAjax(@RequestBody ProjectPackageSingleForm projectPackageSingleForm,
			HttpSession session) {

		// 세션 초기화(projectPackageSingelForm 데이터 세션에서 삭제)
		session.removeAttribute("projectPackageSingleForm");
		// 세션 저장
		session.setAttribute("projectPackageSingleForm", projectPackageSingleForm);

		return "/metahaus/project/forms/preview";
	}

	@RequestMapping(value = "project/triple-package-ajax", produces = "application/text;charset=utf-8")
	@ResponseBody
	public String saveIntoSessionAjax(@RequestBody ProjectPackageTripleForm projectPackageTripleForm,
			HttpSession session) {

		// 세션 초기화(projectPackageTripleForm 데이터 세션에서 삭제)
		session.removeAttribute("projectPackageTripleForm");
		// 세션 저장
		session.setAttribute("projectPackageTripleForm", projectPackageTripleForm);

		return "/metahaus/project/forms/preview";
	}

	@GetMapping("project/forms")
	public String insertForm(HttpSession session) throws IllegalStateException, IOException {
		ProjectFormDTO projectForm = new ProjectFormDTO();
		ProjectPackageForm packageFormDto = null;
		List<ProjectContentsDTO> contentsList = new ArrayList<>();

		///////////// 세션에서 DTO 추출///////////////// 
		// 세션에서 데이터 추출 - projectForm
		projectForm = (ProjectFormDTO) session.getAttribute("projectForm");

		// 세션에서 데이터 추출 - packageFormDto(단일,삼단 패키지)
		if (session.getAttribute("projectPackageSingleForm") != null) {
			packageFormDto = (ProjectPackageSingleForm) session.getAttribute("projectPackageSingleForm");
		} else {
			packageFormDto = (ProjectPackageTripleForm) session.getAttribute("projectPackageTripleForm");
		}
		
		/////////////////// DTO에서 이미지 파일 추출 및 업로드//////////////////////// //
//		  썸네일 추출 & 업로드 & DTO의 thumbnailPath 세팅 
		String path = resourceLoader.getResource("classpath:static/upload/project_thumbnail_img").getFile().getAbsolutePath();
		MultipartFile thumbnail = projectForm.getThumbnail();
		String thumbnailPath = fileService.uploadFile(thumbnail, path);
		
		// 상세이미지들 추출 & 업로드 & ProjectContentsEntity 데이터 옮겨담기
		if (projectForm.getDetailImages() != null) { // 상세이미지들 추출
			List<MultipartFile> detailImages = projectForm.getDetailImages(); // 상세이미지들 업로드
			contentsList = fileService.uploadFiles(detailImages, path);
		}
		System.out.println("projectFormDto : " + projectForm);
		System.out.println("packageFormDto : " + packageFormDto);
		System.out.println("thumbnailPath : " + thumbnailPath);
		for(ProjectContentsDTO dto : contentsList) {
			System.out.println("content : " + dto);
		}
		
		
		//서비스 호출
		projectService.insertProjectInfo(projectForm, 
										packageFormDto, 
										thumbnailPath,
										contentsList);
		
		return "redirect:/project/my-products";
	}

	//////////////////// 승민님 파트//////////////////////////
	@GetMapping("project/project-product")
	public String projectFormlist() {
		return "project/project_product_list";
	}
	/////////////////// 창훈님 파트///////////////////////

}