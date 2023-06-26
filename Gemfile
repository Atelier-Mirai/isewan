source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"

gem "dartsass-rails"

# Use postgresql as the database for Active Record
gem "pg"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt"
# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing"

# テンプレートエンジンにslimを使う
gem 'slim-rails'

# Fomantic UI
gem 'fomantic-ui-sass'

# ログイン
gem 'sorcery'

# markdown
gem 'redcarpet'

# Cloudinary
gem 'cloudinary', require: true
gem 'activestorage-cloudinary-service'
gem 'active_storage_validations'


group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]

  # データベースを整形して見易く表示
  gem "hirb"
  gem "hirb-unicode"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"
  # エラー画面を見やすく
  gem "better_errors"
  # ブラウザ上でirbを使う
  gem 'binding_of_caller'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

group :project do
  # gzip 配信
  gem 'heroku-deflater'
end
