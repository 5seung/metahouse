## **🎇METAHAUS (메타하우스)**
- 메타버스 크리에이터에게는 에셋 판매 및 주문제작 서비스를 판매할 수 있는 환경을 제공하고, 메타버스 유저들에게는 필요한 리소스를 손쉽게 구할 수 있는 환경을 제공하는 플랫폼 구축을 위한 프로젝트 입니다.
- 고객이 다양한 옵션을 제공받아 원활하게 상품을 찾고 구매할 수 있도록 직관적인 검색, 필터링 기능 및 간편한 결제 과정 등을 제공하기 위해 노력하였습니다.
- 개발 기간 : 23.5.16 ~ 23.7.11<br>
- 참여 인원 : 6명 (IDEL)<br>
      
    |<img src="https://avatars.githubusercontent.com/u/132865000?v=4" width="120" height="160"/><br/>BE 이창훈 (팀장) <br/><a href="https://github.com/SoohoCoding">GitHub</a>|<img src="https://avatars.githubusercontent.com/u/121486038?v=4" width="120" height="160"/><br/>BE 박도진 <br/><a href="https://github.com/DojinP">GitHub</a>|<img src="https://avatars.githubusercontent.com/u/127920331?v=4" width="140" height="160"/><br/>BE 오승민 <br/><a href="https://github.com/sminxxi">GitHub</a>|<img src="#" width="120" height="160"/><br/>BE 오승언 <br/><a href="#">GitHub</a>|<img src="https://avatars.githubusercontent.com/u/87427933?v=4" width="120" height="160"/><br/>BE 유세희 <br/><a href="https://github.com/YooSehui">GitHub</a>|<img src="https://avatars.githubusercontent.com/u/66115670?v=4" width="120" height="160"/><br/>BE 정민우 <br/><a href="https://github.com/minwoorich">GitHub</a>|
    |:---:|:---:|:---:|:---:|:---:|:---:|
    | <strong>주요 역할</strong> <br> &middot; 전체 프로젝트 관리 <br> &middot; 회원 및 결제 파트 <br> &middot; 프론트 디자인 | <strong>주요 역할</strong> <br> &middot; 리뷰 파트 <br/> &middot; 프론트 디자인 | <strong>주요 역할</strong> <br> &middot; 리뷰 파트 <br/> &middot; 프론트 디자인 | <strong>주요 역할</strong> <br> &middot; 리뷰 파트 <br/> &middot; 프론트 디자인 | <strong>주요 역할</strong> <br> &middot; 리뷰 파트 <br/> &middot; 프론트 디자인 | <strong>주요 역할</strong> <br> &middot; 리뷰 파트 <br/> &middot; 프론트 디자인 |

<br/>

##  🛠 기술스택

### **[Front-end]**
![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![jQuery](https://img.shields.io/badge/jquery-%230769AD.svg?style=for-the-badge&logo=jquery&logoColor=white)
![Bootstrap](https://img.shields.io/badge/bootstrap-%238511FA.svg?style=for-the-badge&logo=bootstrap&logoColor=white)


### **[Back-end]**   
![Java](https://img.shields.io/badge/java-%23ED8B00.svg?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring](https://img.shields.io/badge/spring-%236DB33F.svg?style=for-the-badge&logo=spring&logoColor=white)
![SpringBoot](https://img.shields.io/badge/SpringBoot-%6DB33F.svg?style=for-the-badge&logo=spring&logoColor=white)
![Thymeleaf](https://img.shields.io/badge/Thymeleaf-%23005C0F.svg?style=for-the-badge&logo=Thymeleaf&logoColor=white)

### **[DB]**
![MySQL](https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white)

### **[Tool & Environment]**  
![eclipseide](https://img.shields.io/badge/eclipseide-%2C2255.svg?style=for-the-badge&logo=eclipseide&logoColor=white)
<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"> 
<img src="https://img.shields.io/badge/figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white">

<br/>

## 💻 ERD
- [📌ERD 링크](https://www.erdcloud.com/d/TZKA5tfdA8fFwNvzg)
- Table 7

![image](#)

<br/>

## 📍 주요 기능
### 일반 유저 권한

<details>
<summary>상품</summary>
  
- 카테고리별 상품 조회
- 상품 목록조회
- 상품 정보 상세보기
- 찜하기(위시리스트 담기)
- 장바구니 담기
  
</details>

<details>
<summary>회원(마이페이지)</summary>
  
- 위시리스트 조회
  
</details>

<details>
<summary>주문/결제</summary>
  
- 단일상품 주문
    

</details>
<details>
<summary>리뷰</summary>
 
- 리뷰 작성  
  + 자신이 구매한 상품만 리뷰 생성 가능
  + 리뷰 이미지는 선택적으로 첨부 가능
  + 리뷰 이미지는 AWS S3 에 저장
    
- 리뷰 조회  
   + 상품별 리뷰 조회 (상품 상세보기 페이지 하단)  
   + 내가 작성한 리뷰 (마이페이지)
  
- 리뷰 삭제  
  + 구매자 본인만 삭제 가능
  
</details>


### 크리에이터 권한
<details>
<summary>상품</summary>
  
- 상품 등록  
  + 상품 이미지는 1장 이상 필수 입력
  
- 상품 삭제
  
</details>



### 기능 데모




<br/>

## 💊 트러블 슈팅

<br/>

## 💫 프로젝트 회고
<details>
<summary> 🌈 좋았던 점 </summary>
<br/>

**적극적인 협업**

- 첫 프로젝트 경험을 기반으로 팀원들과의 소통을 충분히 하기위해 노력하였다. 팀원들 역시 프로젝트에 적극적이라 다양한 의견 제시와 충분한 회의를 할 수 있다. 또한 팀원들 간의 적극적인 지식 공유와 아끼지 않는 칭찬으로 즐거운 협업의 분위기가 조성되어 즐거운 프로젝트를 할 수 있어 좋았다.

**첫 배포 경험**

- 네이버 클라우드를 통해서 배포하는 과정에 직접 참여할 수는 없었지만, 프로젝트가 배포되는 과정을 보고, 경험할 수 있어서 좋았다.
</details>

<details>
<summary> 🌧️ 아쉬웠던 점 </summary>
<br/>
      
**JPA 사용 실패**

- jpa 순환참조 에러를 해결하지 못하고, 사용을 포기한게 아쉬웠다.

**아쉬운 페이징 처리 기능**

- JPA를 활용하여 페이징 처리를 하여고 하였지만, 결국 JPA 사용법을 익히지 못하고 JPA를 사용하지 않고 페이징을 구현하려 하였다. 하지만 시간부족으로 페이징 기능을 구현하기는 하였지만, 제대로 했다라고 말할 수 있는 코드가 아닌 것 같아 아쉬웠다.

**낮은 인프라 이해도**

- 짧은 수업으로는 클라우드 리눅스 등의 지식을 필요로하는 인프라를 이해할 수 없었다. 배포를 진행하는 과정은 본 것은 좋은 경험이었지만, 나는 배포가 어떻게 이루어지는건지 전혀 이해하지 못해서 이 부분이 아쉬웠다.
</details>

<br/>

## 🚀 정보
- multicampus<br>
  - 웹 서비스 개발자 취업캠프(Java)
- multicampus 🐶 Final Project
