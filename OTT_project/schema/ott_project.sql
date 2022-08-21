

-- create database ott;

-- show databases;

USE ott;

drop table IF EXISTs users;
drop table IF EXISTs contents;
drop table IF EXISTs genre;


CREATE TABLE genre (
       genre_name        VARCHAR(20) PRIMARY KEY
);

CREATE TABLE users (
	   id          		VARCHAR(20)  PRIMARY KEY,
       name               	VARCHAR(20) NOT NULL,
       password         	VARCHAR(20) NOT NULL,
       genre_name           VARCHAR(20),
       
       CONSTRAINT fk_gerne_users  FOREIGN KEY(genre_name) REFERENCES genre(genre_name) ON DELETE SET NULL
);




CREATE TABLE contents (
       contents_name     	VARCHAR(50) PRIMARY KEY,
       contents_actor     	VARCHAR(50) NOT NULL,
       contents_inform  	VARCHAR(300) NOT NULL,
       contents_type 	    	VARCHAR(20) NOT NULL,
       genre_name			VARCHAR(20),
       
       CONSTRAINT fk_gerne_contents  FOREIGN KEY(genre_name) REFERENCES genre(genre_name) ON DELETE SET NULL
);


-- ALTER TABLE [테이블 명] ADD CONSTRAINT [제약조건 이름] FOREIGN KEY(컬럼 명) REFERENCES [부모테이블 명](PK 컬럼 명)

select * from information_schema.table_constraints;


-- insert genre
insert into genre values('로맨스');
insert into genre values('스릴러');
insert into genre values('공포');
insert into genre values('액션');
insert into genre values('코미디');
insert into genre values('애니메이션');
insert into genre values('SF'); 
insert into genre values('범죄');


-- insert users 
insert into users values('kim01', 'kimHS', '1111', '로맨스');
insert into users values('So01', 'choiso', '1231', '스릴러');
insert into users values('kim0', 'kimbab', '2211', '공포');
insert into users values('Lee02', 'LeeMH', '0000', '액션');
insert into users values('eun02', 'eunHS', '1117', 'SF');


-- insert contents
-- 스릴러
insert into contents values('킹덤 시즌 1', '주지훈, 류승룡, 배두나', '6부작.\n 죽었던 왕이 되살아나자 반역자로 몰린 왕세자가 향한 조선의 끝.\n 그곳에서 굶주림 끝에 괴물이 되어버린 이들의 비밀을 파헤치며 시작되는 미스터리 스릴러', '드라마', '스릴러');
insert into contents values('신세계', '이정재, 최민식, 황정민', '134분.\n 국내 최대 범죄 조직 골드문의 후계자 선출에 개입하라!\n 작전 설계자 강 과장은 8년 전 조직에 심어 놓은 이자성을 조종하고, 조직 내에선 후계자 전쟁으로 칼바람이 휘몰아친다.\n 각자가 꿈꿨던 그들의 서로 다른 신세계는 열릴 것인가.', '영화', '스릴러');
insert into contents values('2', '파블로 데르키, 마리나 가텔', '71분.\n 처음 본 두 사람이 낯선 장소에서 깨어난다.\n 서로의 복부가 꿰매어진 끔찍한 모습으로, 도데체 누가 이런 짓을 벌인 걸까?\n 그러나 진정한 공포는 이제 시작일 뿐', '영화', '스릴러');
insert into contents values('시그널', '이제훈, 김혜수, 조진웅', '16부작.\n 우리의 시간은 이어져있다.\n 과거로부터 걸려온 간절한 신호(무전)로 연결된 현재와 과거의 형사들이 오래된 미제 사건들을 다시 파헤친다!', '드라마', '스릴러');

-- 로맨스
insert into contents values('나의 소녀시대', '송윤화, 왕다루, 이옥새', '134분.\n 불량스러운 남고생과 똑똑하지만 어딘가 허당끼가 있는 여고생.\n 서로의 연애를 도와주기 위해 생각지 않은 동맹을 맺는다.', '영화', '로맨스');
insert into contents values('키싱부스', '조이 킹, 조엘 코트니, 제이컵 엘로디', '106분.\n 첫 키스를 해버린 엘, 그것도 학교의 인기 넘버원하고!\n 하지만 그는 넘봐선 안 될 사람. 그와 사랑에 빠지면 평생의 단짝을 잃게 된다.\n 새가슴 엘의 선택은?', '영화', '로맨스');
insert into contents values('나의 해방일지', '이민기, 김지원, 손석구', '16부작.\n 견딜 수 없이 촌스런 삼남매의 견딜 수 없이 사랑스러운 행복소생기', '드라마', '로맨스');
insert into contents values('어바웃 타입', '도널 글리슨, 레이첼 맥아담스, 빌나이', '123분.\n 평범한 청년이 알게 된 가문의 놀라운 비밀. 그건 바로 집안의 남자들에게 시간을 되돌리는 능력이 있다는 것.\n 청년은 첫눈에 반한 연인의 마음을 얻기 위해 그 특별한 능력을 사용하기로 한다.\n 그리고 그녀와의 꿈 같은 시간이 시작된다.', '영화', '로맨스');
insert into contents values('내 아이디는 강남미인', '차은우, 조우리', '16부작.\n 어릴 적부터 외모 때문에 놀림당했던 강미래. 그녀는 결심했다. 대학 생활은 행복하게 하겠다고.\n 그리고 스무 살, 성형수술을 받았다. 이제 그녀는 예뻐졌다. 놀라울 정도로', '드라마', '로맨스');

-- 액션
insert into contents values('탑건', '톰 크루즈, 켈리 맥길리스, 발 킬머', '110분.\n 1969년 3월 3일, 미합중국 해군은 최상위 1%의 전투기 조종사들을 위한 엘리트 교육시설을 설립하였다.\n 해당 학교는 잃어버린 근접 공중 전투감각을 향상시켜 교육생들을 세계 최고의 조종사로 만드는 데 그 목적이 있었다. 그들은 성공했다.\n 그리고 조종사들이 부르는 이름은:탑건', '영화' ,'액션');
insert into contents values('공동경비구역JSA', '송강호, 이병헌, 신하균, 이영애', '111분.\n 비무장지대 수색 중 지뢰를 밟아 대열에서 낙오된 이수혁 병장(이병헌)은 북한군 중사 오경필(송강호)과 전사 정우진(신하균)의 도움으로 다행히 목숨을 건진다.\n 이를 계기로 그들은 친해졌고 이수혁 병장은 군사분계선을 넘어 그들을 만나러 간다. \n 그러던 어느 날 그들이 만나는 장면을 북한군에게 들키고 친형제처럼 친하게 지내던 그들은 서로 총부리를 겨눈다.\n 그리고 판문점 공동경비구역 내 북한 초소에서 총성이 울린다.', '영화' ,'액션');
insert into contents values('익스트랙션', '크리스헴스워스, 루드락 자스왈, 란디프 후다', '113분.\n 인도 마약왕 오비 시니어의 외아들인 10대 소년 오비 주니어.\n 어느 날 갑자기 아버지의 라이벌 마약 조직인 방글라데시의 마약 카르텔 아미르 파에게 납치당한다.\n 외아들 오비 주니어를 되찾기 위해 오비 시니어는 용병부대를 모아 아들을 되찾으려 한다.\n 이에 특수부대 출신 용병들은 오비 주니어를 구출하기 위해 방글라데시로 가는데...', '영화' ,'액션');
insert into contents values('엣지 오브 투모로우', '톰 크루즈, 에밀리 블런트', '113분.\n 가까운 미래, 미믹이라 불리는 외계 종족의 침략으로 인류는 멸망 위기를 맞이하게 된다.\n 인류는 그에 대항해 전 세계 군대가 모두 연합한 연합군인 연합방위군(United Defence Force, UDF)을 창설한다.\n 방위군의 정훈장교였던 육군 소령 빌 케이지(톰 크루즈 분)는 자살 작전이나 다름없는 작전에 훈련이나 장비를 제대로 갖추지 못한 상태로 배정되고 전투에 참가 하자마자 죽음을 맞는다.', '영화' ,'액션');

-- 공포
insert into contents values('랑종', '나릴야 군몽콘켓, 싸와니 우툼마, 씨라니 얀키띠칸','130분.\n 날이 갈수록 이상 증세가 점점 심각해지는 밍.\n 무당을 취재하기 위해 님과 동행했던 촬영팀은신내림이 대물림되는 순간을 포착하기 위해밍과 님, 그리고 가족에게 벌어지는 미스터리한 현상을 카메라에 담기 시작한다. 131분.', '영화' ,'공포');
insert into contents values('사바하', '이정재, 박정민, 이재인, 정진영', '123분.\n 신흥 종교 비리를 찾아내는 종교문제연구소 박웅재 목사(이정재).\n 최근 사슴동산이라는 새로운 종교 단체를 조사 중이다.\n 영월 터널에서 여중생이 사체로 발견되는 사건이 발생하고 이를 쫓던 경찰과 우연히 사슴동산에서 마주친 박목사는 이번 건이 심상치 않음을 직감한다.', '영화' ,'공포');
insert into contents values('세퍼레이션', '마미검머, 루퍼트 프렌드, 매드릴 브루어', '113분.\n 8살 제니는 그녀의 변호사 엄마 매기와 예술가 아빠 제프 간의 불화에 이러지도 저러지도 못한다.\n 엄마가 뺑소니 사고로 비극적으로 죽자, 제프와 제니는 새로운 삶을 함께 하려고 한다.\n 그러나 엄마의 영혼은 집을 떠나지 못하고, 이상한 현상들이 나타나면서 제니와 아빠 제프가 위험에 빠지게 되는데..', '영화' ,'공포');
insert into contents values('콜', '박신혜, 전종서, 김성령, 이엘', '112분.\n “이런 사소한 거 하나로 사람 인생이 바뀐다니까”\n 그러던 어느 날, 서연과 영숙은 각자의 현재에서 서로의 인생을 바꿀 사소한 선택을 하게 된다.\n 영숙은 20년 전 죽은 서연의 아빠를 살려주고, 서연은 그 대가로 영숙의 20년 후 미래를 알려준 것.\n 그러나 자신의 끔찍한 미래를 알게 된 영숙이 예상치 못한 폭주를 하면서 서연을 위협하기 시작하는데…!', '영화' ,'공포');

-- 코미디
insert into contents values('크레이지 리치 아시안', '콘스탄스 우, 헨리 골딩, 양자경, 젬마 찬','120분.\n 뉴요커 레이첼은 남자친구 닉의 절친 결혼식이 열리는 싱가포르로 향한다.\n 처음으로 아시아를 방문한다는 설렘도 잠시, 닉의 가족을 만난다는 사실이 걱정이다.\n 그런데 알고 보니 닉이 싱가포르에서 가장 부유한 집안의 아들이자 모두가 선망하는 결혼 후보 1순위 신랑감이었던 것..','영화','코미디');
insert into contents values('7번방의 선물','류승룡, 박신혜, 갈소원', '127분.\n 악의 흉악범들이 모인 교도소 7번방에 이상한 놈이 들어왔다!\n 그는 바로 6살 지능의 딸바보 용구! 평생 죄만 짓고 살아온 7번방 패밀리들에게 떨어진 미션은 바로 용구 딸 예승이를 외부인 절대 출입금지인 교도소에 반.입.하.는.것!\n 2013년 새해, 웃음과 감동 가득한 사상초유의 합동작전이 시작된다!', '영화', '코미디');
insert into contents values('에밀리, 파리에 가다 시즌2', '릴리 콜린', '10부작.\n 봉주르, 파리! 낭만의 도시에서 꿈의 직장을 갖게 된 에밀리.\n 프랑스어는 못하지만, 마케팅이라면 자신 있다.\n 그러나 쉽지 않은 인생. 사랑과 우정은 여기서도 복잡하다.', '드라마', '코미디');
insert into contents values('프렌즈 시즌10','제니퍼 애니스톤, 커트니 콕스, 리사 쿠드로, 매튜 페리, 맷 르블랑, 데이빗 쉼머','18부작.\n 갈수록 알쏭달쏭해져 가는 여섯 친구들의 생활을 그린 드라마', '드라마', '코미디');

-- 애니메이션
insert into contents values('씽2게더', '매튜 맥커너히, 리즈 위더스푼, 스칼릿 요한슨, 태런 에저튼, 토리 켈리','110분.\n 대국민 오디션 이후 각자의 자리에서 꿈을 이루고 있는 버스터 문(매튜 맥커너히)과 크루들에게 레드 쇼어 시티에서\n 전 세계가 주목하는 사상 최고의 쇼가 펼쳐진다는 소식이 들려오고 버스터 문과 크루들은 도전에 나선다.','영화', '애니메이션');
insert into contents values('주술회전', '이타도리 유지, 후시구로 메구미, 쿠기사키 노바라, 젠인 마키', '24부작.\n 저주를 없애기 위해 저주가 된 소년의 되돌릴 수 없는 장렬한 이야기를 그린 애니메이션', '드라마', '애니메이션');
insert into contents values('귀멸의 칼날 1기','탄지로, 네즈코', '26부작.\n 오니의 습격으로 가족이 죽고 남겨진 주인공은 그 습격에서 살아남았지만 오니로 변해버린 여동생을 원래대로 되돌리기 위해,\n 그리고 가족을 죽인 오니에 복수하기 위한 여행을 떠나는 이야기', '드라마', '애니메이션');
insert into contents values('하이큐!!',' 히나타 쇼요, 카게야마 토비오', '25부작.\n 초등학교 시절 TV에서 보았던 고교 배구대회 경기를 우연히 보다, 카라스노 고등학교의 에이스 작은 거인을 동경해서 배구를 시작한 히나타 쇼요.\n 중학교 처음이자 마지막 공식 경기에서 코트 위의 제왕이라는 별명을 지닌 천재 세터 카게야마 토비오가 속한 키타가와 제1 중학교와 맞붙어 참패당한다. 이후..', '드라마', '애니메이션');

-- SF 
insert into contents values('기묘한이야기4', '위노나 라이더, 데이비드 하버, 밀리 바비 브라운', '9부작.\n 인디애나주의 작은 마을에서 행방불명된 소년.\n 이와 함께 미스터리한 힘을 가진 소녀가 나타나고, 마을에는 기묘한 현상들이 일어나기 시작한다.\n 아들을 찾으려는 엄마와 마을 사람들은 이제 정부의 일급비밀 실험의 실체와 무시무시한 기묘한 현상들에 맞서야 한다.', '드라마' ,'SF');
insert into contents values('위쳐2', '헨리 카빌, 애니아 철로트라, 프레이아 앨런', '8부작.\n ''위처''라 불리는 돌연변이 전사, 돈을 받고 괴물을 사냥하는 리비아의 게롤트.\n 세상의 경멸을 견디며 떠돌던 그가 운명의 결정을 내린다. 그리고 그를 덮치는 격랑.\n 마법이 지배하는 대륙에서, 그의 길은 어디로 향하는가.\n 특별한 두 여인과 그는 어떤 인연으로 묶여있는가. ', '드라마' ,'SF');
insert into contents values('인타임', '저스틴 팀버레이크, 아만다 사이프리드, 킬리언 머피', '109분.\n 아무도 늙지 않는 가까운 미래에 한 남자는 수십 년 전 죽은 부유한 살인 희생자로부터 유산을 불려받아 용의자가 된다.', '영화' ,'SF');
insert into contents values('인터스텔라', '매튜 맥커너히, 앤 해서웨이, 제시카 차스테인', '169분.\n 인류 멸망이 족전에 닥친 미래.\n 우주비행사들이 웜홀을 통해 광활한 우주를 여행하며 인류가 살 수 있는 또 다른 행성을 찾아 나선다.', '영화' ,'SF');

-- 범죄
insert into contents values('나우 유 씨미2', '제시 아이젠버그, 마크러펄로, 우디 헤럴슨', '129분.\n 직접 보고도 믿기 힘든 엄청난 마술쇼를 선보였던 마술사들.\n 그들이 새로운 멤버와 함께 돌아왔다. 악덕 기업의 실체를 폭로하기 위해 시작한 새로운 쇼.\n 그런데 어쩌다 일이 꼬인걸까. 마술사들이 함정에 빠져 도망자 신세가 되어 버렸다. ', '영화' ,'범죄');
insert into contents values('종이의 집5', '우르술라 코르베로, 알바로 모르테, 이치아르 이투뇨', '10부작.\n 총알과 섹스, 돈이 난무하는 범죄 드라마. 현실 속 사회상을 잘 버무려 선풍적 인기를 끌었다.\n 전 세계적으로 수많은 열성 팬을 낳은 초특급 화제작 ', '드라마' ,'범죄');
insert into contents values('브레이킹 베드5', '브라이언 크랜스턴, 애런 풀, 안나 건', '16부작.\n 말기 암 진단이 그를 범죄의 세계로 밀어 넣었다. 아니, 그런 줄 알았다.\n 제자와 함께 메스를 제조하기로 한 것은 순전히 가족을 지키려는 결정이었건만, 악과 타협한 그 순간, 그는 다가올 거대한 제국을 선택한 것이었다. ', '드라마' ,'범죄');
insert into contents values('마인드헌터2', '조너선 그로프, 홀트 맥칼라니, 애나 토브', '9부작.\n 단지 미치광이의 소행인가. 무차별 잔혹 범죄가 급증한 1970년대 말.\n FBI 행동과학부 요원들은 잇달아 발생한 강력 사건 해결을 위해 살인마들과 위험한 대화를 시작한다. ', '드라마' ,'범죄');