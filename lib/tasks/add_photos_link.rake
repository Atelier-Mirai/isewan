desc "写真リンク追加"
task :add_photos_link => :environment do
  Link.destroy_all

  Link.create(url: "https://goo.gl/photos/bNjkcT8gpAsuWZgi8", text: "2015年大会二日目")
  Link.create(url: "https://goo.gl/photos/xkW6DT6KwF16SfC56", text: "2015年大会一日目")
  Link.create(url: "https://goo.gl/photos/fKJJEA7DWFz148a59", text: "2015年大会表彰式/閉会式")

  Link.create(url: "https://goo.gl/photos/RQivEBh4cyCApP39A", text: "2016年大会二日目")
  Link.create(url: "https://goo.gl/photos/TdR1iG2KjVD4Ph118", text: "2016年大会一日目")

  Link.create(url: "https://goo.gl/photos/wqRxLkjxEqF9w8XNA", text: "2017年大会表彰式/閉会式")
  Link.create(url: "https://goo.gl/photos/QTG2YZAMqs6HS9sM7", text: "2017年大会二日目その2")
  Link.create(url: "https://goo.gl/photos/MMiVSti97ryxy2K18", text: "2017年大会二日目その1")
  Link.create(url: "https://goo.gl/photos/8Uj1DRundNEQY4yD8", text: "2017年大会一日目")

  Link.create(url: "https://photos.app.goo.gl/vjarmKNHnezUEWox7", text: "2018年大会二日目")
  Link.create(url: "https://photos.app.goo.gl/PgLR3QhrkDh5tsr3A", text: "2018年大会一日目")

  Link.create(url: "https://photos.app.goo.gl/h3VMKmWfXDFSnR9F8", text: "2019年大会表彰式/閉会式/清掃")
  Link.create(url: "https://photos.app.goo.gl/cK6MRBDCAZbTq6jp8", text: "2019年大会開会式/一日目/二日目")

  Link.create(url: "https://photos.app.goo.gl/wBY5KPXsQZyUcmM38", text: "2021年大会")
end
