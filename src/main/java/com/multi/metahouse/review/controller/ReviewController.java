package com.multi.metahouse.review.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import com.multi.metahouse.domain.entity.review.jpadto.ProjectReviewJpaDto;
import com.multi.metahouse.domain.entity.user.User;
import com.multi.metahouse.review.service.ProjectReviewFileUploadService;
import com.multi.metahouse.review.service.ReviewService;

@Controller
public class ReviewController {
	ReviewService reviewService;
	ProjectReviewFileUploadService projectReviewFileService;
	ResourceLoader resourceLoader;
	
	@Autowired
	public ReviewController(ReviewService reviewService, ProjectReviewFileUploadService projectReviewFileService,
			ResourceLoader resourceLoader) {
		super();
		this.reviewService = reviewService;
		this.projectReviewFileService = projectReviewFileService;
		this.resourceLoader = resourceLoader;
	}




	/* -------------민우 영역-------------------------------------------------------------------------------------- */
	@PostMapping("/review/project/write.do")
	public String writeProjectReview(HttpSession session, 
			String orderId, 
			String projectId, 
			String rating, 
			String description, 
			List<MultipartFile> images) throws IOException {

		String path = 
				resourceLoader
				.getResource("classpath:static/upload/review/project")
				.getFile()
				.getAbsolutePath();
		
		List<ProjectReviewJpaDto.ProjectReviewContents> contentsList = new ArrayList<>();
		//이미지경로 추출
		if(!(images.get(0).isEmpty())) {
			contentsList = projectReviewFileService.uploadFiles(images, path);
		}
		//뷰로부터 전달받은  데이터를 담아놓은 DTO (ProjectReviewJpaDto)
		ProjectReviewJpaDto review = ProjectReviewJpaDto.builder()
						.orderId(Long.parseLong(orderId))
						.projectId(Long.parseLong(projectId))
						.writerId(((User)session.getAttribute("loginUser")).getUserId())
						.rating(Long.parseLong(rating))
						.reviewText(description)
						.contentsList(contentsList)
						.build();
		reviewService.insertProjectReview(review);
		String url = "redirect:/order/project/buylist?pageNo=0";
		
		return url;
	}
	
	/* -------------승언님 영역-------------------------------------------------------------------------------------- */
	
}
