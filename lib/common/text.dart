String LANG = 'default';

class CustomTextSet {

  static getText(String key) {
    if (LANG == 'ko') {
      return TEXT_KO[key];
    } else if (LANG == 'en') {
      return TEXT_EN[key];
    } else if (LANG == 'ja') {
      return TEXT_JA[key];
    } else {
      return TEXT_EN[key];
    }
  }

  static getMBTIDesc(String key) {
    if (LANG == 'ko') {
      return MBTI_DESC_KO[key];
    } else if (LANG == 'en') {
      return MBTI_DESC_EN[key];
    } else if (LANG == 'ja') {
      return MBTI_DESC_JA[key];
    } else {
      return MBTI_DESC_EN[key];
    }
  }

  static getMBTITitle(String key) {
    if (LANG == 'ko') {
      return MBTI_TITLE_KO[key];
    } else if (LANG == 'en') {
      return MBTI_TITLE_EN[key];
    } else if (LANG == 'ja') {
      return MBTI_TITLE_JA[key];
    } else {
      return MBTI_TITLE_EN[key];
    }
  }

  static getQuestionText(int key) {
    if (LANG == 'ko') {
      return QUESTION_TEXT_KR[key];
    } else if (LANG == 'en') {
      return QUESTION_TEXT_EN[key];
    } else if (LANG == 'ja') {
      return QUESTION_TEXT_JA[key];
    } else {
      return QUESTION_TEXT_EN[key];
    }
  }

  static getAnswer1Text(int key) {
    if (LANG == 'ko') {
      return ANSWER_TEXT_1_KR[key];
    } else if (LANG == 'en') {
      return ANSWER_TEXT_1_EN[key];
    } else if (LANG == 'ja') {
      return ANSWER_TEXT_1_JA[key];
    } else {
      return ANSWER_TEXT_1_EN[key];
    }
  }


  static getAnswer2Text(int key) {
    if (LANG == 'ko') {
      return ANSWER_TEXT_2_KR[key];
    } else if (LANG == 'en') {
      return ANSWER_TEXT_2_EN[key];
    } else if (LANG == 'ja') {
      return ANSWER_TEXT_2_JA[key];
    } else {
      return ANSWER_TEXT_2_EN[key];
    }
  }

}

const Map<String, String> LANGUAGE_MAPPING = {
  'en': "English",
  'ja': "Japanese",
  'ko': "Korean",
};

const Map<String, double> LANG_SIZE_MAPPING = {
  'en': 1,
  'ja': 0.7,
  'ko': 1,
};

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

const Map<int, String> QUESTION_TEXT_EN = {
  1: "What if the partner wants to go on a double date with his/her friend's partner🤝 ",
  2: "Even if I go on a date with my partner one day of the weekend, I want to take some time alone to rest and recharge.",
  3: "How will I act after arguing with my partner? 🔥",
  4: "What is your reaction when you stumble across a creepy looking road when on your way to a restaurant? 🦉",
  5: "You were walking in the park on a date, and your partner asked you why you suddenly became quiet. What would be the reason? 👻",
  6: "How do you explain an interesting movie to your date ? 🎥",
7: "How do you respond to the date who said that he/she had a hard time because of his/her boss? 😔",
8 : "What do you think of when watching the sun set over the sea...? ☀",
9: "How do you describe youe school days? 🎒",
10: "How do you plan a date for the weekend?💕",
11:"What do you do when thinking about what to wear on a date? 👗",
12: "The place you were planning to visit is unexpectedly closed! In an unexpected situation, you...? 🚙"
};

const Map<int, String> QUESTION_TEXT_JA = {
  1:'恋人が自分の友達のカップルと一緒にダブルデートをしようとしたら？🤝‍',
  2:'2秒以内に思い浮かぶ私の一番理想的な週末は？ ☕',
  3:'恋人と喧嘩した後の私の姿は？ 🔥',
  4:'もともと通っていたところで偶然「鬼道路」と書かれたところを発見したときの私の反応は？ 🦉',
  5:'デート中に公園を歩いていて、急に「何で静かになったの？」と恋人に聞かれたら、何故だと思う？ 👻',
  6:'面白い映画について恋人に説明する時の私の姿は？ 🎥',
  7:'上司のせいで大変だと言う恋人に？ 😔',
  8:'海で日没を見ながら考えているのは…？ ☀',
  9:'学生時代について説明する時の私の姿は？ 🎒',
  10:'週末デートの計画を立てる私の姿は？💕',
  11:'デートの服を悩む私の姿は？ 👗',
  12:'旅行中に行きたかった店が休みだ！突然の状況に私は..? 🚙',
};

const Map<int, String> ANSWER_TEXT_1_KR = {
  1 : "사실 우리 둘만 놀아도 재밌는데.. 좀 부담스럽다",
  2 : "주말 중 하루는 연인과 데이트하더라도 나머지 하루는 나만의 휴식, 충전시간이 있으면 좋겠어 ",
  3 : "집에서 혼자 영화보고 낮잠 자면서 마음을 달랜다",
  4 : "왠지 더 재밌을 것같으니까 도깨비 도로로 가보자",
  5 : "공원 내 조각품을 보며 몽상 중이다",
  6 : "영화의 함축적인 의미와 새로운 결말 가능성에 대해 얘기한다",
  7 : "상사를 왜 힘들게 느끼는지 이해하고 좀 더 나은 방향을 제시해본다.",
  8 : "일몰은 어떻게 저렇게 오묘한 색을 내는지 궁금해 한다.",
  9 : "사실 위주로! 나는 초등학교때 반장이였고, 중학교때는 인기가 있었어! 고등학교때는 공부를 했지",
  10 : "가고 싶었던 곳들 위치와 리뷰를 확인하며 세밀하게 계획한다",
  11 : "데이트 하는 날의 날씨와 가는 장소, 그 전에 입었던 옷들을 고려하여 어떤 코디를 할지 미리 생각해둔다",
  12 : "Plan B가 있었는지 확인해보고 잠시 쉬면서 계획을 재정비한다.",
};

const Map<int, String> ANSWER_TEXT_1_EN = {
  1: "Actually, I prefer to hang out with just the two of us... It's a bit much to go on a double date",
  2: "Even if I go on a date with my partner one day of the weekend, I want to take some time alone to rest and recharge.",
3: "While staying at home alone, I will watch a movie and take a nap to soothe my mind",
  4: "Let's go and see what's down this street. It might be an adventure!",
  5: "I'm day-dreaming while looking at the sculptures in the park",
  6: "Talk about the implications of the film and the possibility of a new ending",
  7: "I understand why your boss is being difficult and suggest a new approach to them",
  8: "I wonder how the sunset produces such a subtle color.",
  9: "Focus on facts! e.g. I was popular in middle school! I studied hard in high school",
  10: "Plan by checking the locations and reviews of places you want to go",
  11: "Consider the weather on the date, the place you are going, and the clothes you wore before that, think about what you will do with your outfit in advance",
  12 : "Check if there is Plan B."
};

const Map<int, String> ANSWER_TEXT_1_JA = {
  1:'「私たち二人だけで遊んでも面白いのに…」 ちょっと負担になる',
  2:'週末のうちの一日は恋人とデートしても、残りの一日は自分だけの休息時間があった方がいい',
  3:'家で一人で映画を見たり、昼寝をしたりして心を癒す',
  4:'何かもっと面白そうだから行ってみよう！',
  5:'公園内の彫刻品を見ながら夢想中',
  6:'映画の含蓄的な意味と新しい結末の可能性について話す',
  7:'話を聞いて大変だったはずの恋人に共感して慰める',
  8:'「美しいです！」 幸せなこの瞬間を楽しむ。',
  9:'感情を中心に！「私は中学校の時一番楽しかったよ。でも仲良しの友達が急に転校して悲しかったの…」',
  10:'行きたかった場所の位置とレビューを確認しながら計画する',
  11:'デートする日の天気と行く場所、その前に着ていた服を考慮してどんなコーディネートをするかあらかじめ考えておく',
  12:'PlanBがあったか確認してみる',
};

const Map<int, String> ANSWER_TEXT_2_KR = {
  1 : "친구 커플도 궁금하고, 어떤 데이트가 될지 기대된다.",
  2 : "연인과 데이트, 친구 모임 등 금요일부터 달릴 생각하니까 신난다!",
  3 : "친한 친구한테 털어놓고 나니 마음이 편해진다",
  4 : "원래 다니던 곳이 가장 짧은 거리이니 원래대로 가자 ",
  5 : "공원 지도를 보고 동선을 고민 중이다",
  6 : "인상 깊었던 장면들에 대해 얘기하며 어떤 감정을 느꼈는지 설명한다",
  7 : "얘기를 듣고 힘들었을 연인에 감정 이입을 하고 위로한다.",
  8 : "아름다워요~! 행복한 이 순간을 즐긴다",
  9 : "감정 위주로! 나는 중학교때 제일 즐거웠어, 근데 단짝친구가 갑자기 전학을 가서 슬펐어 ",
  10 : "큰 흐름을 생각한 후 연인과 만나서 얘기하며 마음가는대로~",
  11 : "데이트 당일 날 나가기 몇분 전 제일 마음에 드는 옷을 입는다",
  12 : "기왕 이렇게 된거, 마음가는 대로 가보자 ",
};

const Map<int, String> ANSWER_TEXT_2_EN = {
  1: "I'm curious about the other couple, and I'm looking forward to meeting them!",
  2: "I'm excited because I'm thinking of planning dates and socializing from Friday to Sunday!",
3: "I would chat about it to a close friend to make me feel better.",
4: "We shouldn't change our route, this one is the fastest",
5: "Looking at the park map and thinking about the route",
6: "Talk about scenes that impressed you and explain how you felt",
7: "After hearing the story, I empathize and comfort my date who must have had a difficult time.",
8 : "It's beautiful~! Enjoy this happy moment",
9: "Focus on emotions! I had the most fun in middle school, but I was sad because my best friend suddenly transferred to another school",
10: "Take it easy and go with the flow when you're with your partner",
11: "On the day of the date, I throw on my favourite clothes a few minutes before leaving",
12: "Relax, and embrace the change"
};

const Map<int, String> ANSWER_TEXT_2_JA = {
  1:'友達カップルも気になるし、どんなデートになるか楽しみ！',
  2:'恋人とデートや友達の集まりなどを考えるとテンション上がる！',
  3:'友達に打ち明けたら心が楽になる',
  4:'もともと通っていた場所が近道だから、そこを通って行こう。',
  5:'公園の地図を見て動線を考えている',
  6:'印象深かった場面について話しながらどんな感情を感じたのかを説明する',
  7:'なぜ辛いのかを理解し、より良い方向を提示してみる',
  8:'日没はどうやってあんなに妙な色を出すのか気になる',
  9:'事実を中心に！「私は小学校の時班長だったし、中学校の時はモテたよ！ 高校の時は勉強ばっかしてた」',
  10:'大きな流れを考えた後、恋人と会って話しながら心の向くままに',
  11:'デート当日、出かける数分前に一番気に入った服を着る',
  12:'どうせこうなったんだから、心の向くままに行ってみよう',
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

const Map<String, String> MBTI_TITLE_KO = {
  'ESTJ' :'철저한 우등생 똑순이 연애꾼',
  'ENTJ' :'이성을 리드하고자 하는 연애계의 나폴레옹',
  'ESTP' :'쾌활한 사교적인 연애 사업가',
  'ENTP' :'유쾌하고 통통튀는 연애 수다쟁이',
  'ISTJ' :'성실하게 데이트하는 땀흘리는 연애 개미',
  'INTJ' :'사색으로 연애를 즐기는 꼼꼼한 지식인',
  'ISTP' :'나무늘보 같지만 뚝배기 안의 진국',
  'INTP' :'똑똑하고 개성있는데 잘 안보이는 투명인간',
  'ISFP' :'까칠해보이지만 여린 예술가',
  'INFJ' :'사랑의 의미를 밝히는 선의의 철학자',
  'INFP' :'낭만적인 세기의 로맨티스트',
  'ISFJ' :'세심하고 헌신적인 연애 나이팅게일',
  'ESFJ' :'센스있고 다정한 연애 외교관',
  'ESFP' :'날 때부터 분위기 메이커',
  'ENFJ' :'친절하고 정의로운 충직한 레트리버',
  'ENFP' :'깨물어주고 싶은 만인의 연인',
};

const Map<String, String> MBTI_TITLE_EN = {

  'ESTJ' : 'Straight-A student, dedicated partner',
  'ENTJ' : 'Napoleon of the dating world who others turn to for guidance',
  'ESTP': 'Cheerful and sociable partner',
  'ENTP' : 'Joyful and bubbly character',
  'ISTJ' : 'A busy bee who is a faithful partner',
  'INTJ': 'A meticulous intellectual who enjoys connecting through deep conversation',
  'ISTP' : 'Looks like a sloth, but very authentic',
  'INTP' : 'Wallflower who is smart and unique',
  'ISFP' : 'An artist who looks hard on the outside but soft within  ',
  'INFJ' : 'A well-meaning philosopher who seeks out the meaning of love',
  'INFP' : 'The hopeless romantic',
  'ISFJ': 'A sensitive person whose love language is acts of service',
  'ESFJ' : 'Sensible and affectionate diplomat in all relationships ',
  'ESFP' : 'Someone who always lights up the room',
  'ENFJ' : 'Friendly, just, and loyal like a golden retriever',
  'ENFP': 'The ultimate people person',

};

const Map<String, String> MBTI_TITLE_JA = {
  'ESTJ':'徹底した優等生。スマートな恋愛人',
  'ENTJ':'理性をリードしようとする恋愛界のナポレオン',
  'ESTP':'陽気で社交的な恋愛の事業家',
  'ENTP':'愉快でユニークな恋愛おしゃべり',
  'ISTJ':'誠実にデートする恋愛アリ',
  'INTJ':'思索で恋愛を楽しむ几帳面な知識人',
  'ISTP':'ナマケモノのようだが、本物',
  'INTP':'賢くて個性的なのによく見えない透明人間',
  'ISFP':'気難しく見えるが、実は繊細な芸術家',
  'INFJ':'愛の意味を明らかにする善意の哲学者',
  'INFP':'ロマンティックな世紀のロマンチスト',
  'ISFJ':'細心で献身的な恋愛ナイチンゲール',
  'ESFJ':'センスのある優しい恋愛外交官',
  'ESFP':'生まれた時からムードメーカー',
  'ENFJ':'親切で正義のある忠直なレトリバー',
  'ENFP':'魅力的な万人の恋人',
};


const Map<String, List<String>> MBTI_DESC_JA = {
'ESTJ' :['きつい性格らしく、記念日は絶対見逃せない性格です',
'たまに恋人にも厳格な物差しを突きつけたり、正直すぎて喧嘩が起きる時があります',
  '愛嬌は苦労して絞り出す方',
  '率直で後腐れのないスタイルです',
  '恋人関係で葛藤が発生すれば回避するよりは一緒に解決しようと思います',
  '恋人に献身的で忠実で、人生のパートナーとの安定した人生を追求します',]
,
'ENTJ' :['大胆にデート計画も立ててすぐ実践していくタイプ',
  '甘すぎる恋愛は苦手だが、知識のパートナーになって大胆に同僚として仕事を処理して成功させます',
  '自分がしようとするなら嫌なことも我慢できるので、自分のタイプの人なら何も考えず成就します',
  '好きな相手が自分の時間まで干渉しようとすると耐えられません',
  '生まれつきのリーダーで自信とカリスマ性のあるスタイルです',
  'あることをやり遂げる時、効率性や闘志を大事にします',]
,
'ESTP' :['すぐ恋に落ち、すぐに恋を忘れることもあります。 ',
  '面白く自分の話を聞いてくれるタイプが好きです',
  '好きなら行動で出るスタイルなので、知らないわけにはいきません。',
  'ロマンチックな言葉よりはストレートな冗談を交わすスタイルの性向と似合います」、',
  '楽でゆったりしたスタイルに惹かれる方です。',
  '机上の空論が嫌いで現実的なアイデアと問題解決が好きです。',]
,
'ENTP' :['不思議なことや新しいこと、面白いことを一緒に経験すると幻想の組み合わせ',
  '口げんかをよくするかもしれないが、それとなくそれを楽しむタイプ',
  '自分の言葉を傾聴して笑ってくれる人に好感を感じるんです。',
  'とにかくモテる！みんなに愛されるタイプです。',
  'すぐ恋に落ちる性向があり、何回の出会いだけでも本人とよく合うか分かります」、',
  '独立的で自分だけの見解がある人たちに惹かれる方です。',]
,
'ISTJ' :['デート中に合理的なことばっかり考えてしまう可能性もあります。',
  '几帳面なISTJに選ばれた人は現実的な面で良い人である可能性が高いです。',
  '新しい恋愛を始めるのを怖がるけど、まじめに結婚生活を維持していきます。',
  '完璧にデートの計画を練ってくる性格で、たまに面白くない時もあります。',
  '恋人に忠実で責任感が強く、約束をよく守ります。',
  '自分の感情を素直に表現するまでに少し時間がかかりますが、良い人だと思ったら温かく配慮する方です',]
,
'INTJ' :['必要じゃない人と会う時間がもったいないんです',
  'ロマンチックな映画を見てもなぜそうなのかを分析しています',
  '結婚すれば相手が一番親しい友達であり人生のパートナーになります。',
  '好きな相手が自分の時間まで干渉しようとすると耐えられません',
  '自ら高い基準を持っている完璧主義者です',
  '好奇心が多く、「なぜ」、「どうして」、「もし」をたくさん言う方です',]
,
'ISTP' :['他人に無関心なISTPが選んだ人は、本気で好きな人！',
  '私生活を重要視し、たまには一人だけの時間を必要とします。',
  '普段は無心に見えますが、その分コミュニケーションの仕方が簡潔で良い時も多いです。',
  '自分だけの時間と空間が重要なだけに、相手にもそのような時間と空間を与えたいと思っています。',
  '友達が多くはなく、感情的な表現が下手でもあります。 なかなか人前で恋人関係や愛情を表現せず、恋人が寂しがる時があります。',
  'しかし恋人に問題がある時、誰よりも先頭に立って問題を解決して助けようとします。',]

,
'INTP' :['告白された瞬間、「なぜ私なのか？」',
  'たまに恋人に連絡するのを忘れて怒られます。',
  '他人にたくさん会うとすぐ疲れますが、配偶者には忠実で献身的です。',
  '好きではない活動を一緒にすることには集中力が落ちるスタイル',
  '創意的で想像力が充満しています。 新しいアイデアが好きです。',
  '自ら自信があり、相手に対する具体的な期待や要求がない方です。',]
,
'ISFP' :['ケンカしたら行方をくらますこともあり得ます。',
  '活動的ではないので近付きにくく見えますが、親しくなれば献身的なスタイルです。',
  '葛藤がほとんどなくケンカすることも珍しく、遠くなる時も徐々に遠くなります。',
  '細かい違いをよく感知するので、ファッションや髪型が変わるとすぐ気づきます。',
  '自分の感情をよく表現し、相手の感情もよく感じる方です。',
  '本人が多少損をしても、恋人の感情と要請に合わせる方です。',]
,
'INFJ':['先に出るのではなく、孤独を楽しんだりもしますが、来る人を防ぐことはありません。',
'新しいことについて学んで一人で整理する時間を持つ方です。',
  '考えが深く、接近しにくく見えても内面は暖かいです。',
  '恋人との関係でも献身してしまいます。',
  '恋人の感情をよく理解し、時々予想できなかったイベントで恋人を楽しませてくれます。',
  '完璧主義性向で、何かにハマったら最高になるまでしがみつく方です。',]
,
'INFP' :['理想的な恋愛観を持っているので、多少現実的ではなさそうに見えたりもします。',
'感受性がとても優れたスタイルで、感覚的なカフェデートが好きです。',
  '美術館、展示会などを観覧して、考えを整理することが好きです。',
  '博愛主義者で動物が好きです。',
  '共感能力が高くて、人に対する関心が多いです。',
  '本人とは違うライフスタイルや見解に対しても開放的で柔軟な方です。',]
,
'ISFJ' :['先に出るのではなく、孤独を楽しんだりもしますが、来る人を防ぐことはありません。',
'新しいことについて学んで一人で整理する時間を持つ方です。',
  '考えが深く、接近しにくく見えても内面は暖かいです。',
  '恋人との関係でも献身してしまいます。',
  '恋人の感情をよく理解し、時々予想できなかったイベントで恋人を楽しませてくれます。',
  '完璧主義性向で、何かにハマったら最高になるまでしがみつく方です。',]

,
'ESFJ' :['周りに敵がなく、恋人や友達と仲良く過ごします。',
'恋人の微妙な感情変化をよくキャッチし、共感と配慮をよくしてくれます」、',
  '愛情の表現が上手で、いつも日常の些細なことを共有したいと思います。',
  '公共の場所でキスしたり、告白したりするのは恥ずかしがります。',
  '現実的で実用的な性向で、恋人にも非現実的なことを期待しません。',
  '葛藤を嫌い、自分の役割を極大化するよりは、みんなが幸せになれる方向を考えています。',]
,
'ESFP' :['知り合いが多く、どこへ行っても集まりの中心になる方です。',
  '静的な活動よりは活動的なデートを好みます。',
  '現在に集中し、流れるままに生きたいと思います。',
  '自由な魂なのでよく約束を忘れたりもします。',
  '話すことも聞くことも好きですが、真剣な会話には弱いかもしれません。',
  '暖かくて活動的な性向で、人に会ってエネルギーを得る方です。',]
,
'ENFJ' :['運命的、ロマンチックに恋に落ちる可能性が高いタイプ',
'恋人に愛をたくさん与えながら、本人にもそうしてほしいと思うタイプです。',
  'そのため、恋人の感情が期待ほど表現されない時、とても苦しんでしまう方です。',
  '思いやりが多くて共感能力が高いです。',
  '頼れる良いカウンセラーです。',
  'ただ、恋人が自分をコントロールしようとすることは好きではなく、自分をコントロールできる領域が必要です。',]
,
'ENFP' :['浪漫的なタイプで、すぐに恋に落ちる確率が高いです！',
'才気はつらつとしていて、恋人にもいつも楽しさを与える方です。',
  '言葉がとても多い方なので、たまに言葉を切るのに困る時があります。',
  '突拍子もないし、一緒にいると退屈する暇がなくていつも楽しいです！',
  '恋愛の序盤に自分の自由時間と優先順位を恋人と合わせていく上で時間が多少必要です。',
  '共感能力が高く、対人関係がいいです。',]
,
};


const Map<String, List<String>> MBTI_DESC_EN = {
  'ESTJ' :["I am the type of person who is very meticulous and rarely makes mistakes. I never miss anniversaries!",
"I have strict standards for my romantic partners and sometimes fight because I’m too honest",
"When conflicts arise in romantic relationships, I try to discuss and resolve the issues rather than avoiding them.",
"I am devoted and faithful to my partner, and I seek a stable life with them",
]
  ,
  'ENTJ' :["The type who plans a date and is eager to go out right away.",
"Although I'm not the best at romantic relationships, I'm a dependable  partner. I can be trusted to get things done. I'm a strong leader and a reliable colleague.",
"I'm used to getting what I want, so I believe I can win the affection of my crush.",
"I can't stand it when my love life gets in the way of my plans and schedule.",
"I'm a natural born leader full of confidence and charisma.",
"I value efficiency and determination."
]
  ,
  'ESTP' :["The type of person who falls head over heels quickly, but is just as quick to forget about their ex. They may be in love with several people at once.",
"I like people who actively listen to my stories. I enjoy being the center of attention.",
"I'm not shy about letting people know what I like and what I don't.",
"I prefer joking around over having a heart-to-heart conversation.",
"I am attracted to easygoing and laid-back people.",

"I prefer realistic ideas and problem solving to abstract theories.",
]
  ,
  'ENTP' :["The type of person who enjoys experimenting with new things and having new experiences. They do best with someone who likes to have fun.",
"I may disagree with you, but I enjoy debating our opinions.",
"I'm attracted to someone who has their own opinion who can still keep an open mind and listen to what I say.",
"I tend to fall in love easily, often at first sight.",
]
  ,
  'ISTJ' :["The type of person who can often be too reasonable or logical for romance. If a discerning ISTJ chooses you, there's a strong chance you're a good person.",
"I'm afraid to start new relationships, but once I'm committed I'm a faithful partner.",
"I'm great at planning the details of a date, but sometimes I struggle to make it fun.",
"I'm faithful to my lover. I have a strong sense of responsibility, and I keep my promises.",
"It takes some time for me to open up, but once I trust you, you'll find that I'm incredibly warm and considerate.",]
  ,
  'INTJ' :["The type of person who thinks it's a waste of time to meet someone who they're not going to develop a deeper relationship with.",
  "When I watch a romantic movie, I tend to analyze the motives of the characters.",
  "When an INTJ chooses a partner, this person becomes their best friend.",
  "I can't stand it when my crush gets in the way of plans and goals.",
  "I'm a perfectionist with high standards for myself.",
"I'm very curious and I frequently find myself asking 'why,' 'how,' and 'what if'"

]
  ,
  'ISTP' :["The type of person who tends to be indifferent to others. However, if they choose you it means they really like you.",
"I highly value privacy and sometimes need time to myself.",
"My communication style is clear and straightforward",
"When I'm in a relationship, it's important to me to maintain my own time and space, and I want to make sure that my partner has the same.",
"I don't have a large friend group, and I'm not always good at expressing my emotions.",
"I'm not a big fan of PDA so my partner may feel a bit neglected in public.",
"When my partner has a problem, I try to take the lead and find a solution.",
]

  ,
  'INTP' :["As an INTP, when someone tells you they like you, your response tends to be 'Why me?'",
"Sometimes my partner gets angry because I forget to communicate with them.",
"I get tired easily when spending time with other people, but I'm faithful and devoted to my partner.",
"I have trouble focusing when doing something I don't like.",
"I am creative and imaginative, and I like unique ideas.",
"I am confident in myself, and I don't have specific expectations or demands of others.",
]
  ,
  'ISFP' :["I am the type of person who avoids conflict. I prefer to pretend everything is okay--even if it's not.",
"I’m hard to approach and I rarely go after the one I like, but once I develop a relationship, I’m a devoted partner.",
"There are few conflicts and rarely any fights when you’re dating an ISFP, but they can be distant and aloof. There won't be any dramatic fights or arguments, and you may wonder what you've done to drive them away.",
"I am observant and notice the small details, so I notice immediately if my partner changes their fashion style of their hair.",
"I am good at expressing my feelings and I can easily empathize with others and feel their emotions, too.",
"I usually adapt myself to the requests and needs of my partner, even if it comes at a personal cost."
]
  ,
  'INFJ':["I am the type of person who enjoys solitude. I rarely approach new people, but I don't stop other people from getting to know me.",
"I tend to take time to learn new things and I like to keep organized.",
"I have deep thoughts and can seem difficult to approach, but I secretly have a warm heart.",
"My romantic relationships quickly become deep and devoted.",
"I understand your partner's feelings well, and sometimes surprise them with an unexpected romantic plan.",
"I am a perfectionist. When I am obsessed with something, I tend to stick with it until I become the best.",
]
  ,
  'INFP' :["The type of person who has an ideal and sometimes unrealistic view of love.",
"I prefer a trendy date at a stylish cafe.",
"After visiting art galleries or exhibitions, I like to take time to organize my thoughts.",
"I am a philanthropist and I love animals. I have a strong sense of empathy and care a lot about others.",
"I am flexible and open to lifestyles and views that are different from my own.",
]
  ,
  'ISFJ' :["The type of person who never forgets their first love.",
"I avoid superficial and short-term relationships, and it takes me a lot of time to build trust with my partner.",
"I can't say no when people ask me, and I often find myself lending money to others.",
"I am comfortable with tradition, and I usually have a close relationship with my parents.",
"I carefully organize my daily schedule and I have a meticulous eye for detail.",
"I find joy in making other people happy. I often do whatever it takes to make my partner happy.",
]

  ,
  'ESFJ' :["The type of person who doesn't have a single enemy. An ESFJ gets along well with their partner and friends.",
"I am empathetic and considerate, and I'm good at noticing the subtle changes in my partner's emotions.",
"I am an affectionate person, and I like sharing the small moments of everyday life with my partner.",
"I'm too shy to kiss or express my true feelings in public.",
"I have a realistic and practical disposition so I don't expect unrealistic things from my partner.",
"I don't like conflict and I prefer to look for a compromise over fighting for what I want.",
]
  ,
  'ESFP' :["The type of person who can be found at the center of any party or event. They seem to know everyone.",
"I prefer going on active dates over sitting and talking.",
"I want to live happily in the present and I usually go with the flow.",
"I'm a free spirit and I often forget my promises.",
"I like to talk and listen but it can be hard for me to have a deep or serious conversation.",
"Meeting people with a warm and active personality energizes me.",
]
  ,
  'ENFJ' :["The type of person who believes in fate and true love. When an ENFJ falls in love, they fall deeply and dramatically.",
"I'm the type of person who has a lot of love to give and I expect the same from my partner.",
"I tend to struggle a lot when my partner doesn't express their feelings as openly as I want.",
"I am very considerate and am empathetic",
"I give good advice you can depend on",
"I don’t like my partner trying to control me, I need my own space",
]
  ,
  'ENFP' :["The type of person who is romantic and can easily fall in love",
"I am a joker, and enjoy making my partner giggle.",
  "I'm a chatterbox and can't help myself",
  "There is no room for boredom, I am an adventurer who enjoys socializing",
      "At the beginning of a relationship, I need some time to adjust to my partner",
      "I like empathy and interpersonal relationships"
,
]
};


const Map<String, List<String>> MBTI_DESC_KO = {
  'ESTJ' :['빡센 성격답게 챙겨야 될 기념일은 빠지지 않고 잘 챙기는 성격이에요',
    '가끔 연인에게도 엄격한 잣대를 들이대거나 너무 솔직해 싸움이 일어날 때가 있어요',
    '애교를 찾아보기는 힘든 편이지만, 해야 한다면 일처럼 힘들게 짜내서 하는 편',
    '솔직하고 뒤끝이 없는 스타일이에요',
    '연인 관계에서 갈등이 발생하면 회피하기보다는 함께 논의하고 해결하려고 해요',
    '연인에게 헌신적이고 충실하며, 인생의 동반자와의 안정된 삶을 추구해요']
  ,
  'ENTJ' :['담대하게 데이트 계획도 짜고 바로바로 실천해나가는 유형',
    '달달한 연애는 잘 하지는 않지만, 지식의 동반자가 되어 대담하게 동료로써 일을 처리해가 성공을 이루게 되어요',
    '자신이 하고자 한다면 싫다는 일도 참아낼수 있기에, 자신이 원하는 유형의 이성이라면 물불 안가리고 성취할 거에요',
    '좋아하는 상대가 자신이 계획해놓은 시간까지 간섭하려 하면 견디지 못해요',
    '타고난 리더형으로 자신감과 카리스마가 있는 스타일이예요',
    '어떤 일을 해낼 때 효율성이나 투지를 중요하게 생각해요']
  ,
  'ESTP' :['금방 사랑에 빠지는 유형, 금방 사랑을 잊기도 하지요. 동시에 몇명의 사람을 만나는 것도 가능해요',
    '재미있게 자신의 이야기를 들어주는 타입의 이성을 좋아해요',
    '좋아하면 바로 행동으로 나오는 스타일이라, 모를 수가 없습니다.',
    '낭만적인 말보다는 직설적인 농담을 주고받는 스타일의 성향과 어울려요',
    '편안하고 느긋한 스타일에 끌리는 편이예요',
    '탁상공론을 싫어하며 현실적인 아이디어와 문제 해결을 좋아해요']
  ,
  'ENTP' :['신기한것, 새로운 것을 같이 해보고, 웃긴짓을 같이 해보면 환상의 조합',
    '말싸움을 자주할수도 있지만, 은근히 또 그걸 즐기는 타입',
    '자신의 말을 경청해주고 웃어줄수 있는 사람에게 호감을 느낀다구요',
    '여러 이성과의 썸이 쉽게 생길 수 있어요',
    '금사빠 성향이 있으며 몇 번의 만남만으로도 본인과 잘 맞는지 알 수 있어요',
    '독립적이고 자신만의 견해가 있는 사람들에게 끌리는 편이예요']
  ,
  'ISTJ' :['데이트에 너무 합리적인 것만 따질수도 있어요',
    '꼼꼼한 ISTJ에게 선택된 이성은 현실적인 면에서 좋은 사람일 가능성이 많지요',
    '새로운 연애를 시작하는걸 두려워하지만, 성실하게 결혼생활을 유지해나가요',
    '완벽하게 데이트 계획을 짜오는 성격이지만, 가끔은 재미가 없을 때도 있어요',
    '연인에게 충실하며 책임감이 강하고 약속을 잘 지켜요',
    '자신의 감정을 솔직하게 표현하는데까지 시간이 다소 걸리지만, 내 사람이라는 생각이 들면 누구보다 따뜻하고 상대를 배려하는 편이예요']
  ,
  'INTJ' :['필요한 사람이 아니면 만나는 시간이 아깝다구요',
    '로맨틱한 영화를 봐도 왜 그런지를 분석하고 있어요',
    '결혼하면 상대방이 제일 친한 친구이자 인생의 동반자가 되어요',
    '좋아하는 상대가 자신이 계획해놓은 시간까지 간섭하려 하면 견디지 못해요',
    '스스로 높은 기준을 갖고 있는 완벽주의자예요',
    '호기심이 많으며 왜, 어떻게, 만약에를 많이 말하는 편이에요']
  ,
  'ISTP' :['남에게 무척 무관심한 ISTP가 택한 사람은 진심으로 좋아하는 사람!',
    '사생활을 중요시 해서 가끔은 자기 시간을 필요로 해요',
    '평소에는 무심해 보이지만, 그만큼 의사소통 방식이 간결해서 좋을 때도 많아요',
    '자신만의 시간과 공간이 중요한 만큼 상대방에게도 그러한 시간과 공간을 주고 싶어해요',
    '친구가 많이 있지는 않고, 감정적인 표현에 서투르기도 해요. 좀처럼 남들 앞에서 연인 관계나 애정을 표현하지 않아 연인이 섭섭해할 때가 있어요',
    '하지만 연인에게 문제가 있을 때 누구보다 앞장서서 문제를 해결하고 도와주려고 해요']

  ,
  'INTP' :['고백을 받는순간, 왜 나일까?',
    '가끔씩 연인에게 연락하는것을 잊어먹어 혼나요',
    '타인을 많이 만나면 쉽게 지치지만, 배우자에게는 충실하고 헌신적이에요',
    '좋아하지 않는 활동을 같이 하는 것에는 쉽게 집중력이 떨어지는 스타일',
    '창의적이고 상상력이 충만해요. 새로운 아이디어를 좋아해요',
    '스스로 자신감이 있으며, 상대방에 대한 구체적인 기대나 요구가 없는 편이에요.']
  ,
  'ISFP' :['싸우면 잠적할수도 있어요',
    '활동적이지 않아 다가가기 힘들어 보이지만 친해지면 헌신적인 스타일이에요',
    '갈등이 거의 없고 싸우는 일이 드물고, 멀어질때도 서서히 멀어져요',
    '미세한 차이를 잘 감지하기 때문에, 패션이나 머리스타일이 바뀌면 잘 감지해요',
    '자신의 감정을 잘 표현하며 상대방의 감정도 잘 느끼는 편이에요',
    '본인이 다소 손해를 보더라도 연인의 감정과 요청을 맞춰주는 편이에요']
  ,
  'INFJ':['먼저 나서지는 않고, 고독을 즐기기도 하지만, 오는  사람을 막지는 않아요',
    '새로운 것에 대해 배우고 혼자 정리하는 시간을 가지는 편이에요',
    '생각이 깊고 접근하기 힘들어 보여도 내면적으로 따뜻한 심성을 지녔어요',
    '연인과의 관계에서도 굉장히 깊고 헌신하는 관계가 됩니다',
    '연인의 감정을 잘 이해하며 때때로 예상치 못한 이벤트로 연인을 즐겁게 해줘요',
    '완벽주의 성향으로 어떤 것에 꽂히면 최고가 될 때까지 매달리는 편이에요']
  ,
  'INFP' :['이상적인 사랑관을 가지고 있어서 다소 현실적이지 않아 보이기도 해요',
    '감수성이 굉장히 뛰어난 스타일로 감각적인 카페 데이트를 좋아해요',
    '미술관, 전시회 등을 관람하고 생각을 정리하는걸 좋아해요',
    '박애주의자이고 동물을 좋아해요',
    '공감 능력이 좋고 사람에 대한 관심이 많아요',
    '본인과는 다른 라이프스타일이나 견해에 대해도 개방적이고 유연한 편이에요']
  ,
  'ISFJ' :['첫사랑과의 추억은 잘 잊지 못하는 편이에요',
    '피상적이고 단기적인 관계를 지양하며, 연인을 믿기까지 시간이 많이 필요한 편이에요',
    '부탁하면 잘 거절하지 못해서, 돈을 많이 빌려주기도 합니다',
    '전통적인 역할에 대한 거부감이 없고, 보통은 부모님과도 친밀한 관계이에요',
    '매일 해야할 일들을 잘 정리하여 해내며, 디테일에 강해요',
    '다른 사람들을 기쁘게 하면서 즐거움을 얻어요. 연인을 행복하게 하기 위해 어떤 일이든 자처하는 편이에요']

  ,
  'ESFJ' :['주변에 적이 없고 연인, 친구들과 두루두루 잘 지내요',
    '연인의 미묘한 감정 변화를 잘 캐치하고 공감과 배려를 잘 해줘요',
    '애정 표현도 잘하고 일상의 소소한 것들을 함께 공유하고 싶어해요',
    '공공장소에서 키스하거나 고백하는 것은 쑥쓰러워해요',
    '현실적이고 실용적인 성향으로, 연인에게도 비현실적인 것을 기대하지 않아요',
    '갈등을 싫어하며 자신의 몫을 극대화하는 것보다는 모두가 윈윈하여 행복할 수 있는 방향을 생각해요']
  ,
  'ESFP' :['아는 사람이 많고 어딜가든 모임의 중심이 되는 편이에요',
    '정적인 활동보다는 활동적인 데이트를 선호해요',
    '현재를 행복하게, 흐르는 대로 살고싶어해요',
    '자유로운 영혼이라 자주 약속을 까먹기도 해요',
    '말하는 것도 듣는 것도 좋아하지만, 진지한 대화에는 약할 수 있어요',
    '따뜻하고 활동적인 성향으로 사람을 만나며 에너지를 얻는 편이에요']
  ,
  'ENFJ' :['상대방을 운명적, 낭만적으로 사랑에 빠질 가능성이 많은 유형',
    '사랑을 많이 주면서 본인에게도 많이 사랑해주기를 바라는 유형이에요',
    '그렇기에 연인의 감정이 기대만큼 표현되지 않을 때 많이 힘들어하는 편이에요',
    '배려심이 많고 공감능력이 좋아요',
    '기댈 수 있는 좋은  카운셀러에요',
    '다만 연인이 자신을 통제하려고 하는 것을 좋아하지 않으며, 스스로를 통제할 수 있는 영역이 필요해요']
  ,
  'ENFP' :['낭만적인 편이여서 금방 사랑에 빠질 확률이 높아요!',
    '재기발랄해서 연인에게도 항상 즐거움을 주는 편이에요',
    '말이 굉장히 많은 편이라 가끔은 말을 끊는데 어려움이 있을 때가 있어요',
    '엉뚱하고 통통 튀어 같이 다니면 지루할 틈이 없고 항상 즐거워요',
    '연애 초반에 자신의 자유시간과 우선순위를 연인과 맞춰 나감에 있어서 시간이 다소 필요해요',
    '공감 능력과 대인관계가 좋아요']
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

const Map<String, String> TEXT_KO = {
  'TITLE' : 'Couple Analysis (16 personality, MBTI) : Tree of memories',
  'APP_TITLE' : '기억나무',
  'DOWNLOAD' : '앱 다운로드',
  'Q1' : '연애할때 나의 MBTI는?',
  'Q2' : '나도 몰랐던 내 모습이 있다구!',
  'BUTTON_GO' : '나의 연애세포 측정하기 🧬',
  'MY_MBTI' : '나의 연애세포 MBTI는',
  'SHARE' : '결과 공유하기',
  'GOOD' : '최고의 궁합',
  'RE_TEST' : '테스트 다시 하기',
  'ME_TEST' : '나도 테스트 해보기',
  'MORE' : '기억나무 앱에서 더 알아보기 😍'
};

const Map<String, String> TEXT_EN = {
  'TITLE' : '16 Personalities when you are in love',
  'APP_TITLE' : 'Tree of Memories',
  'DOWNLOAD' : 'Download App',
  'Q1' : 'Finding your true self..',
  'Q2' : 'What\'s my personality when I am in love?',
  'BUTTON_GO' : "Let's analyze 🧬",
  'MY_MBTI' : 'My personalty is..',
  'SHARE' : 'Share',
  'GOOD' : 'Best buddy',
  'RE_TEST' : 'Retest',
  'ME_TEST' : 'I also want to the test!',
  'MORE' : 'Find out details in the app, Tree of Memories 😍'
};

const Map<String, String> TEXT_JA = {
  'TITLE' : 'Couple Analysis (16 personality, MBTI) : Tree of memories',
  'APP_TITLE' : '記憶の木',
  'DOWNLOAD' : 'アプリダウンロード',
  'Q1' : '恋愛する時の私の本当の性格は？',
  'Q2' : '私も知らなかった私の姿があるんだよ！',
  'BUTTON_GO' : '調べに行く 🧬',
  'MY_MBTI' : '私の恋愛スタイルは',
  'SHARE' : '結果共有',
  'GOOD' : '最高の相性',
  'RE_TEST' : '再テストする',
  'ME_TEST' : '私もテストする。',
  'MORE' : 'アプリでもっと調べる 😍'
};



const QUESTION_COUNT = 12;