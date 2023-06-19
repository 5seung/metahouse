package com.multi.metahouse.domain.dto.portfolio;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.type.Alias;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.multi.metahouse.domain.dto.user.UserDTO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Alias("portfolio")
public class PortfolioDTO {
	private String portfolioId;
	private String userId;
	private String category1;
	private String category2;
	private String portfolioTitle;
	private Date portfolioPjStartDay;
	private Date portfolioPjEndDay;
	private String mainImg;
	private String mainImgStoreFilename;
	private String portfolioPjContent;
	private String portfolioPjPoint;
	private String portfolioPjStyle;
	private Date portfolioWriteDay;
	
	private List<MultipartFile> portfolioPjContentImg;
	private List<MultipartFile> portfolioPjPointImg;
	private List<MultipartFile> portfolioPjStyleImg;
	private List<MultipartFile> portfolioAttachFile;
	private MultipartFile multipartMainImg;
	
	
}
