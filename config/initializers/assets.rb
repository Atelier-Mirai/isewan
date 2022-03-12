Rails.application.config.assets.paths << Rails.root.join("vendor", "stylesheets")
# アセットパスの追加
Dir.glob("#{Rails.root}/app/assets/images/**/").each do |path|
  Rails.application.config.assets.paths << path
end
