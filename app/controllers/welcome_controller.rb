class WelcomeController < ApplicationController
  def index
    @landing = '<h1 class=\"ui center aligned h1 header mb-0\">伊勢湾カップ 2022</h1>\n<p class=\"ui center aligned h2 header mb-0\">新舞子の碧い海&nbsp;<br class=\"mobile only\">集う若人&nbsp;競う技術</p>\n<p class=\"ui center aligned h3 header mb-0\">8月6日(土)～7日(日)</p>'

    @about   = About.recent.first
    @notices = Notice.recent

    # @events  = Event.displayed.order(start_date: :asc)
    @preliminarys = Event.preliminary.displayed.order(start_date: :asc, id: :asc)
    @regionals    = Event.regional.displayed.order(start_date: :asc, id: :asc)

    @seeded_player = seeded_player

    @winners = Winner.all
    @links = Link.all.order(times_held: :desc, rank: :asc)
  end

  private

  Player = Struct.new(:name, :team)

  def seeded_player
    isewan = <<~ISEWAN
    小嶺　恵美	FSエンジニアリング
    鍊石　恵子	富士フイルム
    杉本　寧々	CBサーファーズ
    森野　杏子	nuts
    池田　拓海	神奈川県セーリング連盟
    尾川　滜	和歌山県セーリング連盟
    福村　拓也	豊田自動織機
    山本　遼	ラナイズビーチクラブ
    大瀬　快ヘルマン	宮崎大学
    箭内　康平	FAR EAST
    市川　和典	ヤマハ
    籾山　和慶	豊田自動織機
    坂口　智彦	　
    小松　大悟	本田技研工業
    小林　直寛	オクダスタイル
    ISEWAN

    wind = <<~WIND
    作野　達雄	島根県セーリング連盟
    大熊　伸昌	Sea_You
    白木　伸明	琉球大学
    WIND

    tech_men = <<~TECH_MEN
    倉鹿野　巧	神奈川大学
    内藤　紳之介	明治大学
    山根　千明	慶應義塾大学
    岡本　大成	慶應義塾大学
    小山田　柊平	セブンシーズ
    川村　飛翔	明治大学
    重松　良惟	上智大学
    新開　誠也	大阪大学
    田中　翔	明治大学
    高津　一晃	東京建物
    井上　隆	神奈川大学
    髙橋　雄哉	青山学院大学
    岡　滜一郎	立命館大学
    今西　弘成	溆賀大学
    藤原　海	同志社大学
    大島　春哉	明治大学
    中嶋　剛士	京都大学
    三寺　将太	慶應義塾大学
    片山　好人	溆賀大学
    國司　景太郎	大阪大学
    永井　稜大	関東学院大学
    小西　陽人	Marine　Blue
    小林　将	明治大学
    宮下　響	京都大学
    戸田　優人	オクダスタイル
    多田　健人	青山学院大学
    西谷　俊輝	大阪大学
    楢本　訓基	京都大学
    小林　海土	日本大学
    齋藤　海斗	関東学院大学
    TECH_MEN

    tech_women = <<~TECH_WOMEN
    大島　朱莉	カントリーハーバー
    木幡　夢	青山学院大学
    元木　千乃	CBサーファーズ
    岡　朋加	明治大学
    里村　香奈	神戸大学
    山下　響	ラナイズビーチクラブ
    神尾　瑠夏	関東学院大学
    石井　明香里	慶応義塾大学
    水野　聖玲奈	上智大学
    森島　多希乃	同志社大学
    TECH_WOMEN

    i = []
    isewan.each_line do |line|
      name, team = line.split(/\s+/)
      i << Player.new(name, team)
    end

    w = []
    wind.each_line do |line|
      name, team = line.split(/\s+/)
      w << Player.new(name, team)
    end

    tm = []
    tech_men.each_line do |line|
      name, team = line.split(/\s+/)
      tm << Player.new(name, team)
    end

    tw = []
    tech_women.each_line do |line|
      name, team = line.split(/\s+/)
      tw << Player.new(name, team)
    end


    { isewan: i, wind: w, tech_men: tm, tech_wemen: tw }
  end
end
