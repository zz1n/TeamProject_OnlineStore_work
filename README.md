# TeamProject_OnlineStore
01. TeamProject_OnlineStore

com.teampj.shop
popol / 1234

객체명 꼭꼭 확인하고, 기능 구현 확인위해서 만든 임시 객체 aaa같은거 꼭 수정하기.
일회성으로 쓰이는 객체여도 객체 이름을 다른 사람이 봤을 때 뭔지 대충이라도 이해 할 수 있는 이름으로 하기.
객체명 오타났는데 나머지도 다 오타로 통일해버리는 식으로 하지 말고 꼭 오타 수정하기.
주석 달 수 있으면 달기.
https://1drv.ms/x/s!AoAFrj9GbibY93GHNb8wjXn2KXWx?e=Otku9q

~SELLER~
판매자코드	scode	key seq
아이디	sellerid	
패스워드	sellerpw	
상호명	scomname	
대표이름	sprename	
사업자번호	sbusnum	
통판신고번호	scomsalenum	
소재지	scomaddress	
이메일	semail	
연락처	smobile	
회원가입일	srgtdate	sysdate
회원탈퇴여부	selleryn	default 1 / (가입:1, 탈퇴:2)

~USER~
유저코드	ucode	key seq
아이디	userid	
패스워드	userpw	
이름	uname	
전화번호	umobile	
배송지	uaddress1	
배송지2	uaddress2	
배송지3	uaddress3	
우편번호	uzipcode	
이메일	uemail	
포인트	upoint	
회원가입일	urgtdate	sysdate
회원탈퇴여부	useyn	default 1 / (가입:1, 탈퇴:2)

~ORDER~
주문번호	ocode	key seq
유저코드	ucode	
판매자코드	scode	
상품코드	pcode	
수량	ocount	
배송지	oaddress	
배송메모	omemo	
결제방법	omethod	
구매일	odate	sysdate
배송상태	ostate	default 1 / (배송전 : 1, 배송시작 : 2, 구매확정 : 3) 
송장번호	shipcode	
주문상태	shipstate	결제여부, 주문취소여부 등?

~PROFIT~
주문번호	ocode	key
판매자코드	scode	
상품코드	pcode	
상품명	pname	
매출	oprofit	
판매수량	ocount	
판매일	odate	sysdate

~PRODUCT(LIST)~
상품코드	pcode	key seq
판매자코드	scode	
상품명	pname	
가격	price	
원가	cost	
판매가능수량	pcount	0이되면 오더 막히게
배송기간	pshipday	
배송비	pshipcost	
반품배송비	preshipcost	
도서산간배송비	pspshipcost	
상품썸네일	pthumbnail	
상품설명	pdscrpt	
대분류	pmaincate	
소분류	psubcate	
태그	ptag	
상품등록일	prgtdate	sysdate

~CART~
유저코드	ucode	
상품코드	pcode	
담은날짜	indate	sysdate
판매자코드	scode	
수량	bcount	default 1 / 즐겨찾기 등록시 수량이 미체크되기때문에
구분코드	bcode	(장바구니 : 1,  즐겨찾기 : 2, 최근본상품 : 3, 관심브랜드 : 4)

~BOARD~
글번호	bnum	key seq
글작성자코드	bcode	ucode또는ocode
제목	bname	
내용	bcont	
상품코드	pcode	
작성날짜	bdate	sysdate
글 유형	btype	문의글 : 1, 후기글 : 2, 사이트문의 : 3
글번호자동생성시퀸스		seq
부모번호	reproot	
내려쓰기	repstep	
들여쓰기	repindent
