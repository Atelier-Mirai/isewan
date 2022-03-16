# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Landing.create(
  title: '<h1 class="ui center aligned h1 header">伊勢湾カップ 2022</h1>
<p class="ui center aligned h2 header">新舞子の碧い海&nbsp;<br class="mobile only">集う若人&nbsp;<br class="mobile only">競う技術</p>
<p class="ui center aligned h3 header">8月6日(土)～7日(日)</p>',
  body: '本年の伊勢湾カップは、8月6日、7日の両日に開催いたします。

新舞子の海で皆様にお会いできることを思い、実行委員会として海のレースとして最高のパフォーマンスを発揮できるよう、準備をいたしております。

なお、シード選手並びに各地区の予選大会については近日中に発表いたしますので、もうしばらくお待ちください。

<div class="ui right aligned container"><p>令和4年2月23日<br>伊勢湾カップ実行委員会</p></div>')

About.create(body: "1983年(昭和58年)より開催。今年で39回目を迎えた国内有数のウィンドサーフィンの祭典です。")

Notice.create([
  { title: "第39回伊勢湾カップ2022 開催のお知らせ",
    body: "本年の伊勢湾カップは、8月6日、7日の両日に開催いたします。 新舞子の海で皆様にお会いできることを思い、実行委員会として 海のレースとして最高のパフォーマンスを発揮できるよう、準備をいたしております。
    なお、シード選手ならびに各地区の予選大会については近日中に発表いたしますので、もうしばらくお待ちください。" }
])
