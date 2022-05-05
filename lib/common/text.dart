String LANG = 'ko';

class CustomTextSet {
  static getQuestionText(int key) {
    if (LANG == 'ko') {
      return QUESTION_TEXT_KR[key];
    } else {
      return QUESTION_TEXT_KR[key];
    }
  }

  static getAnswer1Text(int key) {
    if (LANG == 'ko') {
      return ANSWER_TEXT_1_KR[key];
    } else {
      return ANSWER_TEXT_1_KR[key];
    }
  }


  static getAnswer2Text(int key) {
    if (LANG == 'ko') {
      return ANSWER_TEXT_2_KR[key];
    } else {
      return ANSWER_TEXT_2_KR[key];
    }
  }

}


const Map<int, String> QUESTION_TEXT_KR = {
  1 : "연인이 자신의 친구 커플과 함께 더블 데이트를 하자고 한다면? 🤝‍",
  2 : "2초안에 떠오르는 나의 가장 이상적인 주말은? ☕",
  3 : "연인과 싸운 후의 나의 모습은? 🔥",
  4 : "원래 다니던 곳에서 우연히 도깨비 도로라고 쓰여진 곳을 발견할 때 나의 반응은? 🦉",
  5 : "데이트 중 공원을 거닐다가 갑자기 왜 조용해졌냐고 연인이 묻는데 그 이유는? 👻",
  6 : "재미있는 영화에 대해 연인한테 설명할 때 나의 모습은? 🎥",
  7 : "상사 때문에 힘든 일이 있었다고 말하는 연인에게? 😔",
  8 : "바다에서 일몰을 보며 하는 생각은..? ☀",
  9 : "학창 시절에 대해 설명할 때 나의 모습은? 🎒",
  10 : "주말의 룰루랄라 데이트 계획을 짜는 나의 모습은? 💕",
  11 : "데이트를 할때 옷차림을 고민하는 내 모습은? 👗",
  12 : "여행 중 예기치 못하게 가려던 곳이 휴업이다! 돌발상황에 나는..? 🚙"
};

const Map<int, String> ANSWER_TEXT_1_KR = {
  1 : "사실 우리 둘만 놀아도 재밌는데.. 좀 부담스럽다",
  2 : "주말 중 하루는 연인과 데이트하더라도 나머지 하루는 나만의 휴식, 충전시간이 있으면 좋겠어 ",
  3 : "집에서 혼자 영화보고 낮잠 자면서 마음을 달랜다",
  4 : "왠지 더 재밌을 것같으니까 도깨비 도로로 가보자",
  5 : "공원 내 조각품을 보며 몽상 중이다",
  6 : "영화의 함축적인 의미와 새로운 결말 가능성에 대해 얘기한다",
  7 : "얘기를 듣고 힘들었을 연인에 감정 이입을 하고 위로한다.",
  8 : "아름다워요~! 행복한 이 순간을 즐긴다",
  9 : "감정 위주로! 나는 중학교때 제일 즐거웠어, 근데 단짝친구가 갑자기 전학을 가서 슬펐어 ",
  10 : "가고 싶었던 곳들 위치와 리뷰를 확인하며 계획한다",
  11 : "데이트 하는 날의 날씨와 가는 장소, 그 전에 입었던 옷들을 고려하여 어떤 코디를 할지 미리 생각해둔다",
  12 : "Plan B가 있었는지 확인해본다.",
};

const Map<int, String> ANSWER_TEXT_2_KR = {
  1 : "친구 커플도 궁금하고, 어떤 데이트가 될지 기대된다.",
  2 : "연인과 데이트, 친구 모임 등 금요일부터 달릴 생각하니까 신난다!",
  3 : "친한 친구한테 털어놓고 나니 마음이 편해진다",
  4 : "원래 다니던 곳이 가장 짧은 거리이니 원래대로 가자 ",
  5 : "공원 지도를 보고 동선을 고민 중이다",
  6 : "인상 깊었던 장면들에 대해 얘기하며 어떤 감정을 느꼈는지 설명한다",
  7 : "상사를 왜 힘들게 느끼는지 이해하고 좀 더 나은 방향을 제시해본다.",
  8 : "일몰은 어떻게 저렇게 오묘한 색을 내는지 궁금해 한다.",
  9 : "사실 위주로! 나는 초등학교때 반장이였고, 중학교때는 인기가 있었어! 고등학교때는 공부를 했지",
  10 : "큰 흐름을 생각한 후 연인과 만나서 얘기하며 마음가는대로~",
  11 : "데이트 당일 날 나가기 몇분 전 제일 마음에 드는 옷을 입는다",
  12 : "기왕 이렇게 된거, 마음가는 대로 가보자 ",
};



const Map<int, String> QUESTION_TYPE = {
  1: 'I',
  2 : 'I',
  3 : 'I',
  4 : 'N',
  5 : 'N',
  6 : 'N',
  7 : 'T',
  8 : 'T',
  9 : 'T',
  10 : 'J',
  11 : 'J',
  12 : 'J'
};

const Map<String, String> MBTI_TITLE = {
  'ESTJ' :'철저한 우등생 연애꾼',
  'ENTJ' :'이성을 리드하고자 하는 나폴레옹',
  'ESTP' :'쾌활한 사교가',
  'ENTP' :'유쾌하고 통통튀는 수다쟁이',
  'ISTJ' :'데이트도 열심히, 성실히, 개미처럼',
  'INTJ' :'사색으로 연애를 즐기는 고고한 지식인',
  'ISTP' :'느릿느릿 하지만 사랑한다는!',
  'INTP' :'똑똑한 투명인간',
  'ISFP' :'까칠해보이지만 여린 예술가',
  'INFJ' :'선의의 철학자',
  'INFP' :'낭만적인 이상주의자',
  'ISFJ' :'세심하고 헌신적인 천사',
  'ESFJ' :'센스있는 표현왕',
  'ESFP' :'타고난 분위기 메이커',
  'ENFJ' :'친절하고 정의로운 레트리버',
  'ENFP' :'낭만적이고 활발한 만인의 연인',


};

const Map<String, List<String>> MBTI_DESC = {
  'ESTJ' :['빡센 성격답게 챙겨야 될 기념일은 빠지지 않고 잘 챙기는 성격이에요',
            '가끔 연인에게도 엄격한 잣대를 들이대거나 너무 솔직해 싸움이 일어날 때가 있어요',
            '애교를 찾아보기는 힘든편이지만, 해야한다면 일처럼 힘들게 짜내서 하는 편',
            '솔직하고 뒤끝이 없는 스타일이에요'],

  'ENTJ' :['담대하게 데이트 계획도 짜고 바로바로 실천해나가는 유형',
'달달한 연애는 잘 하지는 않지만, 지식의 동반자가 되어 대담하게 동료로써 일을 처리해가 성공을 이루게 되어요',
'자신이 하고자 한다면 싫다는 일도 참아낼수 있기에, 자신이 원하는 유형의 이성이라면 물불 안가리고 성취할 거에요',
'좋아하는 상대가 자신이 계획해놓은 시간까지 간섭하려 하면 견디지 못해요']
,
  'ESTP' :['금방 사랑에 빠지는 유형, 금방 사랑을 잊기도 하지요. 동시에 몇명의 사람을 만나는 것도 가능해요',
'재미있게 자신의 이야기를 들어주는 타입의 이성을 좋아해요',
'좋아하면 바로 행동으로 나오는 스타일이라, 모를수가 없습니다.',
'낭만적인 말보다는 직설적인 농담을 주고받는 스타일의 성향과 어울려요']
,
  'ENTP' :['신기한것, 새로운 것을 같이 해보고, 웃긴짓을 같이 해보면 환상의 조합',
'말싸움을 자주할수도 있지만, 은근히 또 그걸 즐기는 타입',
'자신의 말을 경청해주고 웃어줄수 있는 사람에게 호감을 느낀다구요',
'여러 이성과의 썸이 쉽게 생길 수 있어요']
,
  'ISTJ' :['데이트에 너무 합리적인것만 따질수도 있어요',
'꼼꼼한 ISTJ에게 선택된 이성은 현실적인 면에서 좋은 사람일 가능성이 많지요',
'새로운 연애를 시작하는걸 두려워하지만, 성실하게 결혼생활을 유지해나가요',
'완벽하게 데이트 계획을 짜오는 성격이지만, 가끔은 재미가 없을때도 있어요']
,
  'INTJ' :['필요한 사람이 아니면 만나는 시간이 아깝다구요',
'로맨틱한 영화를 봐도 왜 그런지를 분석하고 있어요',
'결혼하면 상대방이 제일 친한 친구이자 인생의 동반자가 되어요',
'좋아하는 상대가 자신이 계획해놓은 시간까지 간섭하려 하면 견디지 못해요']
,
  'ISTP' :['남에게 무척 무관심한 ISTP가 택한 사람은 진심으로 좋아하는 사람!',
'사생활을 중요시 해서 가끔은 자기 시간을 필요로 해요',
'평소에는 무심해 보이지만, 그만큼 의사소통 방식이 간결해서 좋을 때도 많아요',
'친구가 많이는 있지 않고, 감정적인 표현에 서투르기도 해요. 하지만 노력하는 모습이 너무 귀여운 존재']
,
  'INTP' :['고백을 받는순간, ‘왜 나일까?’',
'가끔씩 연인에게 연락하는것을 잊어먹어 혼나요',
'타인을 많이 만나면 쉽게 지치지만, 배우자에게는 충실하고 헌신적이에요',
'좋아하지 않는 활동을 같이 하는 것에는 쉽게 집중력이 떨어지는 스타일']
,
  'ISFP' :['싸우면 잠적할수도 있어요',
'활동적이지 않아 다가가기 힘들어 보이지만 친해지면 헌신적인 스타일이에요',
'갈등이 거의 없고 싸우는 일이 드물고, 멀어질때도 서서히 멀어져요',
'미세한 차이를 잘 감지하기 때문에, 패션이나 머리스타일이 바뀌면 잘 감지해요']
,
  'INFJ' :['먼저 나서지는 않고, 고독을 즐기기도 하지만, 오는 사람을 막지는 않아요',
'새로운 것에 대해 배우고 혼자 정리하는 시간을 가지는 편이에요',
'생각이 깊고 접근하기 힘들어 보여도 내면적으로 따뜻한 심성을 지녔어요',
'연인과의 관계에서도 굉장히 깊고 헌신하는 관계가 됩니다']
,
  'INFP' :['이상적인 사랑관을 가지고 있어서 다소 현실적이지 않아 보이기도 해요',
'감수성이 굉장히 뛰어난 스타일로 감각적인 카페 데이트를 좋아해요',
'미술관, 전시회 등을 관람하고 생각을 정리하는걸 좋아해요',
'박애주의자이고 많은 동물을 좋아해요']
,
  'ISFJ' :['첫사랑과의 추억은 잘 잊지 못하는 편이에요',
'연인을 믿기까지 시간이 많이 필요한 타입이에요',
'부탁하면 잘 거절하지 못해서, 돈을 많이 빌려주기도 합니다',
'전통적인 역할에 대한 거부감이 없고, 보통은 부모님과도 친밀한 관계입니다.']
,
  'ESFJ' :['주변에 적이 없고 연인, 친구들과 두루두루 잘 지내요',
'연인의 미묘한 감정 변화를 잘 캐치하고 공감과 배려를 잘 해줘요',
'애정 표현도 잘하고 일상의 소소한 것들을 함께 공유하고 싶어해요',
'공공장소에서 키스하거나 고백하는것은 쑥쓰러워해요']
,
  'ESFP' :['아는 사람이 많고 어딜가든 모임의 중심이 되는 편이에요',
'정적인 활동보다는 활동적인 데이트를 선호해요',
'현재를 행복하게, 흐르는 대로 살고싶어해요',
'자유로운 영혼이라 자주 약속을 까먹기도 해요']
,
  'ENFJ' :['상대방을 운명적, 낭만적으로 사랑에 빠질 가능성이 많은 유형',
'사랑을 많이 주면서 본인에게도 많이 사랑해주기를 바라는 유형이에요',
'다른사람도 배려하고, 연인에게도 많이 배려해요',
'기댈 수 있는 좋은 카운셀러에요']
,
  'ENFP' :['낭만적인 편이여서 금방 사랑에 빠질 확률이 높아요!',
'재기발랄해서 연인에게도 항상 즐거움을 주는 편이에요',
'말이 굉장히 많은 편이라 가끔은 말을 끊는데 어려움이 있을 때가 있어요',
'엉뚱하고 통통 튀어 같이 다니면 지루할 틈이 없고 항상 즐거워요']
,
};

const Map<String, String> MBTI_GOOD_COUPLE = {
  'ESTJ' :'ISFP',
  'ENTJ' :'INTP',
  'ESTP' :'ISFJ',
  'ENTP' :'INFJ',
  'ISTJ' :'ESFP',
  'INTJ' :'ENFP',
  'ISTP' :'ESFJ',
  'INTP' :'ENTJ',
  'ISFP' :'ESTJ',
  'INFJ' :'ENTP',
  'INFP' :'ENFJ',
  'ISFJ' :'ESTP',
  'ESFJ' :'ISTP',
  'ESFP' :'ISTJ',
  'ENFJ' :'INFP',
  'ENFP' :'INTJ',
};

const Map<String, String> MBTI_BAD_COUPLE = {
  'ESTJ' :'INFJ',
  'ENTJ' :'INFJ',
  'ESTP' :'INFP',
  'ENTP' :'ISFP',
  'ISTJ' :'ENFJ',
  'INTJ' :'ESFJ',
  'ISTP' :'ENFP',
  'INTP' :'ESFP',
  'ISFP' :'ENTP',
  'INFJ' :'ESTJ',
  'INFP' :'ESTP',
  'ISFJ' :'INFP',
  'ESFJ' :'ENFP',
  'ESFP' :'ENFJ',
  'ENFJ' :'ISTJ',
  'ENFP' :'ISTP',
};



const QUESTION_COUNT = 12;