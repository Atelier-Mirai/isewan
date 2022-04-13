# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Landing.create(
  title: '<h1 class="ui center aligned h1 header mb-0">伊勢湾カップ 2022</h1>
<p class="ui center aligned h2 header mb-0">新舞子の碧い海&nbsp;<br class="mobile only">集う若人&nbsp;競う技術</p>
<p class="ui center aligned h3 header mb-0">8月6日(土)～7日(日)</p>',
  body: '本年の伊勢湾カップは、8月6日、7日の両日に開催いたします。

新舞子の海で皆様にお会いできることを思い、実行委員会として海のレースとして最高のパフォーマンスを発揮できるよう、準備いたしております。

なお、シード選手並びに各地区の予選大会については近日中に発表いたしますので、もうしばらくお待ちください。

<div class="ui right aligned container"><p>令和4年2月23日<br>伊勢湾カップ実行委員会</p></div>')

About.create(body: "伊勢湾カップとは、昭和58年より開催、今年で39回目を迎える国内有数のウィンドサーフィンの祭典です。毎年夏に愛知県知多市新舞子海岸沖で行われます。")

Notice.create([
  { title: "第39回伊勢湾カップ2022 開催のお知らせ",
    body: "本年の伊勢湾カップは、8月6日、7日の両日に開催いたします。 新舞子の海で皆様にお会いできることを思い、実行委員会として 海のレースとして最高のパフォーマンスを発揮できるよう、準備をいたしております。
    なお、シード選手ならびに各地区の予選大会については近日中に発表いたしますので、もうしばらくお待ちください。" }
])

Event.create([
  { start_date: nil, end_date: nil, schedule_adjustment: nil, category: "preliminary",
    name: "逗子市長杯(未定)", place: "神奈川県逗子市逗子海岸", nor_url: nil, result_url: nil,
    contact: "オフィスアビーム", phone: "046-874-9878", url: "https://www.officeabeam.co.jp/", email: "info@officeabeam.co.jp",
    display: true  },

  { start_date: "2022-05-15", end_date: nil, schedule_adjustment: nil, category: "preliminary",
    name: "Himeno Cup 2022 the 25th", place: "神奈川県逗子市逗子海岸", nor_url: "https://jw-a.org/wp-content/uploads/2022/04/2022himenocup-kouji.pdf", result_url: nil,
    contact: "KAYA", phone: "046-872-1883", url: "http://www.kayawind.com/race/2021/himenocup2021.pdf", email: "kayawind@kamakuranet.ne.jp",
    display: true  },

  { start_date: "2022-06-11", end_date: "2022-06-12", schedule_adjustment: nil, category: "preliminary",
    name: "第44回 WSF湘南選手権", place: "神奈川県鎌倉市材木座", nor_url: "https://jw-a.org/wp-content/uploads/2022/04/2022himenocup-kouji.pdf", result_url: nil,
    contact: "KAYA", phone: "046-872-1883", url: "http://www.kayawind.com/race/2021/himenocup2021.pdf", email: "kayawind@kamakuranet.ne.jp",
    display: true  },

  { start_date: "2022-05-28", end_date: "2022-05-29", schedule_adjustment: nil, category: "preliminary",
    name: "琵琶湖マリンカップ", place: "滋賀県近江八幡市", nor_url: nil, result_url: nil,
    contact: "セブンシーズ", phone: "0467-22-5050", url: "http://www.7seas.jp/", email: nil, display: true  },

  { start_date: "2022-06-19", end_date: nil, schedule_adjustment: nil, category: "preliminary",
    name: "36th MID CUP 2022", place: "静岡県浜名湖 大崎海岸 ビーチスマリーナ沖", nor_url: nil,  result_url: nil,
    contact: nil, phone: nil, url: nil, email: nil, display: true },


  { start_date: "2022-07-02", end_date: "2022-07-03", schedule_adjustment: nil, category: "both",
    name: "テクノクラス、国体WS級中部選手権大会", place: "愛知県知多市新舞子", nor_url: nil, result_url: nil,
    contact: "大会事務局", phone: "090-1476-2206", url: "https://isewan.herokuapp.com", email: "ayf-wind@sd5.so-net.ne.jp",
    display: true  },

  { start_date: "2022-07-10", end_date: nil, schedule_adjustment: nil, category: "both",
    name: "伊勢湾カップ 新舞子セレクションレース", place: "愛知県知多市新舞子", nor_url: nil, result_url: nil,
    contact: "大会事務局", phone: "090-1476-2206", url: "https://isewan.herokuapp.com", email: "ayf-wind@sd5.so-net.ne.jp",
    display: true  },

  { start_date: nil, end_date: nil, schedule_adjustment: nil, category: "preliminary",
    name: "四国選手権大会", place: nil, nor_url: nil, result_url: nil,
    contact: nil, phone: nil, url: nil, email: nil, display: true },

  { start_date: nil, end_date: nil, schedule_adjustment: "7月第一週または第二週の土日", category: "preliminary",
    name: "九州選手権大会", place: "大分県杵築市住吉浜リゾート", nor_url: nil, result_url: nil,
    contact: "マリンショップ BUZZ", phone: "0978-63-8774", url: "https://marineshop-buzz.com/", email: nil, display: true },

  { start_date: "2022-07-09", end_date: nil, schedule_adjustment: nil, category: "regional",
    name: "国体 愛知県予選", place: "愛知県知多市新舞子", nor_url: nil, result_url: nil,
    contact: "大会事務局", phone: "090-1476-2206", url: "https://isewan.herokuapp.com", email: "ayf-wind@sd5.so-net.ne.jp",
    display: true  },

  { start_date: "2022-08-21", end_date: nil, schedule_adjustment: nil, category: "regional",
    name: "名古屋港ボート天国 ナゴヤチャレンジカップ", place: "名古屋港ヨットトレーニングセンター", nor_url: nil, result_url: nil,
    contact: "大会事務局", phone: "090-1476-2206", url: "https://isewan.herokuapp.com", email: "ayf-wind@sd5.so-net.ne.jp",
    display: true  },

  { start_date: nil, end_date: nil, schedule_adjustment: nil, category: "preliminary",
    name: "OHKカップ イン かがわ２０１９featuuring海岸寺", place: "香川県仲多度郡多度津町海岸寺(同沖合)", nor_url: nil, result_url: nil,
    contact: "香川潜水", phone: "0877-45-2511", url: "http://www.kagawasensui.com/wind/sensui.html", email: nil, display: false },

  { start_date: nil, end_date: nil, schedule_adjustment: nil, category: "preliminary",
    name: "青島GO GO CUP", place: "宮崎市青島海水浴場", nor_url: nil, result_url: nil,
    contact: "タコス サーフトイズ", phone: "0985-58-1014", url: "http://park21.wakwak.com/~eyp/tacos/", email: nil, display: false },

  { start_date: nil, end_date: nil, schedule_adjustment: nil, category: "preliminary",
    name: "シーガルカップ", place: "福岡県福間海岸", nor_url: nil, result_url: nil,
    contact: "シーガルイン", phone: "0940-43-2661", url: "http://seagull-inn.com/2019/03/05/seagullcup-2/", email: nil, display: false },

  { start_date: nil, end_date: nil, schedule_adjustment: nil, category: "preliminary",
    name: "伊勢湾沖縄セレクション", place: nil, nor_url: nil, result_url: nil,
    contact: "ポポロポイント", phone: "098-983-0000", url: "http://ww61.tiki.ne.jp/~popolo", email: nil, display: false },
])

Link.create(url: "https://photos.app.goo.gl/cK6MRBDCAZbTq6jp8", text: "2019年大会開会式/一日目/二日目")
Link.create(url: "https://photos.app.goo.gl/h3VMKmWfXDFSnR9F8", text: "2019年大会表彰式/閉会式/ビーチクリーン")
Link.create(url: "https://photos.app.goo.gl/PgLR3QhrkDh5tsr3A", text: "2018年大会一日目")
Link.create(url: "https://photos.app.goo.gl/vjarmKNHnezUEWox7", text: "2018大会二日目")
Link.create(url: "https://goo.gl/photos/8Uj1DRundNEQY4yD8", text: "2017年大会一日目")
Link.create(url: "https://goo.gl/photos/MMiVSti97ryxy2K18", text: "2017年大会二日目その1")
Link.create(url: "https://goo.gl/photos/QTG2YZAMqs6HS9sM7", text: "2017年大会二日目その2")
Link.create(url: "https://goo.gl/photos/wqRxLkjxEqF9w8XNA", text: "2017年大会表彰式/閉会式")
Link.create(url: "https://goo.gl/photos/TdR1iG2KjVD4Ph118", text: "2016年大会一日目")
Link.create(url: "https://goo.gl/photos/RQivEBh4cyCApP39A", text: "2016年大会二日目")
Link.create(url: "https://goo.gl/photos/xkW6DT6KwF16SfC56", text: "2015年大会一日目")
Link.create(url: "https://goo.gl/photos/bNjkcT8gpAsuWZgi8", text: "2015年大会二日目")
Link.create(url: "https://goo.gl/photos/fKJJEA7DWFz148a59", text: "2015年大会表彰式/閉会式")
