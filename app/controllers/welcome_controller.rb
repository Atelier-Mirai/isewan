class WelcomeController < ApplicationController
  def index
    @landing = Landing.recent.first
    @about   = About.recent.first
    @notices = Notice.recent

    # @events  = Event.displayed.order(start_date: :asc)
    @preliminarys = Event.displayed.preliminary.order(start_date: :asc)
    @regionals    = Event.displayed.regional.order(start_date: :asc)

    @seeded_player = seeded_player

    @links = Link.all
  end


  private

  Player = Struct.new(:name, :team)

  def seeded_player
    isewan = <<~ISEWAN
      尾川　潤	和歌山県セーリング連盟
      小松　大悟	本田技研工業
      由里　亮太	パイレーツハーバー
      山本　遼	ラナイズビーチ
      鳥取　雅嗣	広和シッピング
      杉本　寧々	CBサーファーズ
      鍊石　恵子	富士フイルム
      箭内　康平	埼玉県セーリング連盟
      籾山　和慶	豊田自動織機
      鈴木　砂良	愛知県ヨット連盟
      宗方　聡子	三重県セーリング連盟
      森野　杏子 　
      村山　智紀	SMBC信託銀行
      坂口　智彦 　
    ISEWAN

    tech_men = <<~TECH_MEN
      関　港大	セブンシーズ
      三浦　圭	明治大学
      内藤　紳之介	明治大学
      倉鹿野　巧	神奈川大学
      川村　航一	湘南工科大学
      高津　一晃	ＣＢサーファーズ
      山本　健治	京都大学
      中島　隼人	明治大学
      来海　崚	京都大学
      相沢　遼	明治大学
      岡本　大成	慶應義塾大学
      田中　翔	明治大学
      村岡　澪	セブンシーズ
      井上　隆	神奈川大学
      市島　将平	伊豆急
      藤原　拓斗	青山学院大学
      田中　洋治郎	立教大学
      山根　千明	慶應義塾大学
      羽田　健太	甲南大学
      長井　幹太	明治大学
      芝川　元就	関西学院大学
      小西　陽人	Marine_Blue
      谷口　海斗	京都大学
      楢本　訓基	京都大学
      伊藤　颯	立命館大学
      児島　廉	滋賀ウィンドサーフィン部
      坪根　遼翼	早稲田大学
      梶山　勇人	Cross_On
      桑原　颯一	立命館大学
      谷上　理規	京都大学
      重松　良惟	上智大学
      中島　大智	早稲田大学
      中島　理幾	ＣＲＢ
      川村　飛翔	明治大学
      谷岡　翔太	京都大学
    TECH_MEN

    tech_women = <<~TECH_WOMEN
      大島　萌	京都大学
      村岡　美空	セブンシーズ
      太田　華代	横浜市立大学
      渡邊優帆	関東学院大学
      小野　たえ	ＣＲＢ
      元永　花	ライナズビーチ
      元木　千乃	慶應義塾大学
      北原　史野	京都大学
      酒井　七海	千葉工業大学
      大島　朱莉	カントリーハーバー
      米原　美穂	関西学院大学
      谷　奈渚子	慶應義塾大学
      柳川　真奈	上智大学
      櫻井　玲海	日本大学
      木幡　夢	ＣＲＢ
    TECH_WOMEN

    i = []
    isewan.each_line do |line|
      name, team = line.split(/\s+/)
      i << Player.new(name, team)
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

    { isewan: i, tech_men: tm, tech_wemen: tw }
  end
end
