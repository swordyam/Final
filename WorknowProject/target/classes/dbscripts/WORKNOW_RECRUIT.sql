--구인,구직등록시 게시판		표시되는 정보로만 구성 상세정보클릭시 id값을 바탕으로 뷰에서 정보를 가져와 표시해준다.
DROP TABLE RESUME_BOARD;
CREATE TABLE RESUME_BOARD
(
RESUME_DATE DATE NOT NULL,
RESUME_LEVEL NUMBER NOT NULL,
RESUME_TYPE VARCHAR2(300) NOT NULL,
RESUME_STARTTIME DATE NOT NULL,
RESUME_ENDTIME DATE NOT NULL,
RESUME_STARTDAY DATE NOT NULL,
RESUME_ENDDAY DATE NOT NULL,
RESUME_CONTENT 	VARCHAR2(3000) NOT NULL,
RESUME_ID VARCHAR2(100) NOT NULL 
)
-- Table 명		RESUME_BOARD				구인 게시판? 이력서 게시판?			
--No	Column 명	한글명 	자료형	NULL	Key	비고 / 설명			
--1	RESUME_DATE	등록날짜	DATE	N		게시글 날짜 (날짜순으로 기본정렬)			
--2	RESUME_LEVEL	게시레벨	NUMBER	N		게시글 레벨(레벨이 높을수록 앞에 노출? 돈내놔)			
--3	RESUME_TYPE	직종분류	VARCHAR2(300)	N		원하는 직종분류 셀렉트한걸 문자열로 저장(서비스,IT,단순노무,),로 스플릿해서 분류			
--4	RESUME_STARTTIME	시작시간	DATE	N		하루중에 일하기 원하는 시작시간 분류 date로 시간형을 지정해서 저장			
--5	RESUME_ENDTIME	끝시간	DATE	N		하루중에 일하기 원하는 끝시간 분류 date로 시간형을 지정해서 저장(06:00)시:분			
--6	RESUME_STARTDAY	시작날	DATE	N		일하기 원하는 시작날짜			
--7	RESUME_ENDDAY	끝날	DATE	N		일하기 원하는 끝날짜			
--8	RESUME_CONTENT	이력서본문	VARCHAR2(3000)	N	디폴트 NONE	이력서 등록시 추가로 작성했으면 그내용이 들어가고 아니면 NONE값이 들어가있으며 그경우 개인회원정보의 소갯말이 자동으로 들어감			
--9	RESUME_ID	등록자ID	VARCHAR2(100)	N		ID			

DROP TABLE JOB_BOARD;
CREATE TABLE JOB_BOARD
(
JOB_DATE DATE NOT NULL,
JOB_LEVEL NUMBER NOT NULL,
JOB_SUBJECT VARCHAR2(300) NOT NULL,
JOB_TYPE VARCHAR2(60) NOT NULL,
JOB_PHOTO VARCHAR2(200) NOT NULL,
JOB_VALUE NUMBER NOT NULL,
JOB_VALUETYPE VARCHAR2(60) NOT NULL,
JOB_STARTTIME 	DATE NOT NULL,
JOB_ENDTIME DATE NOT NULL ,
JOB_STARTDAY DATE NOT NULL ,
JOB_ENDDAY DATE NOT NULL ,
JOB_CONTENT VARCHAR2(3000) NOT NULL,
JOB_ID VARCHAR2(100) NOT NULL
)
									
-- Table 명		JOB_BOARD				구인 게시판? 기업 게시판?			
--No	Column 명	한글명 	자료형	NULL	Key	비고 / 설명			
--1	JOB_DATE	등록날짜	DATE	N		게시글 날짜 (날짜순으로 기본정렬)			
--2	JOB_LEVEL	게시레벨	NUMBER	N		게시글 레벨(레벨이 높을수록 앞에 노출? 돈내놔)			
--3	JOB_SUBJECT	제목	VARCHAR2(300)	N		ex : gs25 오전하루 단기해주실 구해요			
--4	JOB_TYPE	직종분류	VARCHAR2(60)	N		직종분류 (서비스,IT등등)			
--6	JOB_PHOTO	사진파일이름	VARCHAR2(200)	N	디폴트 NONE	사진파일이름(확장자 포함) ,NONE일경우 사진파일이 등록안된경우			
--7	JOB_VALUE	급여	NUMBER	N		시급or일급or주급의 수치			
--8	JOB_VALUETYPE	지급분류	VARCHAR2(60)	N		시급,일급,주급,건당(분류)			
--9	JOB_STARTTIME	시작시간	DATE	N		하루중에 일하는 시작시간 분류 date형으로 분단위까지저장			
--10	JOB_ENDTIME	끝시간	DATE	N		하루중에 일하는 끝시간 분류 date형으로 분단위까지저장			
--11	JOB_STARTDAY	시작날	DATE	N		일하는 시작날 			
--12	JOB_ENDDAY	끝날	DATE	N		일하는 끝날			
--13	JOB_CONTENT	본문	VARCHAR2(3000)	N	디폴트 NONE	주저리 주저리 블라 블라 			
--14	JOB_ID	등록자ID	VARCHAR2(100)	N		id			