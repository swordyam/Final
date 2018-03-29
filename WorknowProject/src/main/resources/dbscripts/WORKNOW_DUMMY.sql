--더미 데이터 입력 테스트용
INSERT INTO MEMBER_INFO VALUES('ADMIN','ADMIN','관리자','010-111-1111','이메일',0,0)
INSERT INTO MEMBER_INFO VALUES('ADMIN2','ADMIN2','기업관리자','010-111-1111','이메일',1,0)

INSERT INTO COM_INFO VALUES('ADMIN2','사짜등록번호SAGI-GGUN','사짜주식회사','회사주소랄까','잘생긴윤화니','잘-생-긴-유화니');									
INSERT INTO PERSONAL_INFO VALUES('ADMIN','내가 관리자다',30,'집주소','남','PHOTO1.JPG');

INSERT INTO PERSONAL_CAREER VALUES('ADMIN','핸썸윤환회사','윤화니의 비서',to_date('2018-03-20','yyyy-mm-dd'),to_date('2018-03-30','yyyy-mm-dd'),0);
INSERT INTO COM_CAREER VALUES('ADMIN2','박용준','윤화니의 노예1',to_date('2018-03-20','yyyy-mm-dd'),to_date('2018-03-30','yyyy-mm-dd'));



--뷰 조회(회원)
SELECT * FROM  PERSONAL_VIEW;
SELECT * FROM  COMPANY_VIEW;

--경력 조회
SELECT * FROM PERSONAL_CAREER;
SELECT * FROM COM_CAREER;

