package com.multi.metahouse.domain.entity.project;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.MapsId;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.multi.metahouse.domain.dto.project.ProjectFormDTO;
import com.multi.metahouse.domain.dto.project.ProjectPackageForm;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Builder
@NoArgsConstructor
@AllArgsConstructor 
@Data
@Entity
@Table(name="project_package_single")
public class ProjectPackageSingleEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="project_package_single_id")
	private Long projectPackageSingleId;
	private Long projectId;
	private String pkgTitle;
	private String pkgDescription;
	private int price;
	private int revision;
	private int workdays;
	
//	@OneToOne(fetch = FetchType.EAGER)
//	@MapsId //@MapsId 는 @id로 지정한 컬럼에 @OneToOne 이나 @ManyToOne 관계를 매핑시키는 역할
//	@JoinColumn(name = "project_id")
//	private ProjectEntity projectEntity;
	
	
}
