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
      山崎大輔  横浜市栄消防署
      村田高亮	東栄住宅
      馬渕俊輔	和田川水道管理所
      高津一晃	ＣＢサーファーズ
      福村拓也	豊田自動織機
      市川和典	ヤマハ発動機
      山本　遼	ライナズビーチクラブ
      水田長兵	たなか眼科
      籾山和慶	豊田自動織機
      荒川智大	栃木県Ｓ連盟
      坂口智彦	　
      堀川智江	セブンシーズ
      錬石恵子	富士フイルムＢＳＣ
      森野杏子	ＣＢサーファーズ
    ISEWAN

    tech = <<~TECH
      深尾圭貴	京都大
      関　港大	関東学院大
      佐藤裕次郎	立命館大
      大江貴史	立命館大
      瀧宮隆弘	同志社大
      三浦　圭	明治大
      久保恒一郎	同志社大
      一楽想大	神戸大
      田中宏樹	神戸大
      打田　淳	大阪大
      由里亮太	鹿屋体育大
      林　知宏	京都大
      保延祐希	武蔵大
      市島将平	明治大
      秋元悠輔	上智大
      新﨑聖峰	京都大
      竹内大熙	明治大
      大塩凱斗	神戸大
      有働拓実	同志社大
      大間清也	同志社大
      長瀬　穣	早稲田大
      松本祐樹	京都大
      森平裕也	明治大
      前岡　歩	京都大
      三村太郎	ＣＢサーファーズ
      中野凌太	甲南大
      亀嶋宏祥	京都大
      鈴木玲音	MAGIC_MARINE
      岩井貴矢	大阪大
      吉田朔大	かんとりーはーばー
      永目　航	関西学院大
      篠田創太	早稲田大
      古橋拓朗	早稲田大
      上田拓馬	早稲田大
      植村桂伍	大阪大
      宮本　海	上智大
      須河内茉里	上智大
      鈴木砂良	青山学院大
      倭　千晶	京都大
      飯野奈月	早稲田大
      西村菜乃	京都大
      古谷寛子	関東学院大
      相澤　遥	大阪大
      炭田聖奈	神戸大
      山之内薫	京都大
      佐藤　花	上智大
      島田七帆	関西学院大
      畑村茉穂	京都大
      石井真菜	立命館大
      塚本麻耶	京都大
    TECH

    i = []
    isewan.each_line do |line|
      name, team = line.split(/\s+/)
      i << Player.new(name, team)
    end

    t = []
    tech.each_line do |line|
      name, team = line.split(/\s+/)
      t << Player.new(name, team)
    end

    { isewan: i, tech: t }
  end
end
