desc "歴代優勝者追加"
task :add_winners => :environment do
  Winner.destroy_all

  winners = <<~WINNERS
  1 岩橋　修
  2 佐藤　務
  3 佐藤　務
  4 牧野秀紀
  5 牧野秀紀
  6 的野昌彦
  7 野崎道世
  8 桐谷高史
  9 浅野則夫
  10 浅野則夫
  11 山田昭彦
  12 湯川雅裕
  13 クリスローレンス
  14 湯川雅裕
  15 見城元一
  16 井上幾郎
  17 井上幾郎
  18 井上幾郎
  19 上野一也
  20 井上幾郎
  21 上野一也
  22 井上幾郎
  23 藤井哲生
  24 藤井哲生
  25 見城元一
  26 松尾康宏
  27 山崎大輔
  28 山崎大輔 寒河江聡志
  29 鳥取雅嗣 田中章雄
  30 金子岳司 小森貴裕
  31 山崎大輔 板庇雄馬
  32 松尾康宏 板庇雄馬
  33 尾川　潤 河村真生
  34 尾川　潤 西上実彩子
  35 尾川　潤 小林周平
  36 山崎大輔 深尾圭貴
  37 尾川　潤 森平裕也
  38 尾川　潤 関　港大
  39 小嶺　恵美 倉鹿野　巧
  WINNERS

  winners.each_line(chomp: true) do |w|
    times, isewan, tech = w.split(" ")
    Winner.create(times: times, isewan: isewan, tech: tech)
  end
end
