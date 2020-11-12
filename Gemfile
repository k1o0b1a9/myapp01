source 'https://rubygems.org'

gem 'rails',        '5.1.6'
gem 'bcrypt',         '3.1.12'
gem 'bootstrap', '~> 4.4.1' #bootstrap導入時railsチュートリアルのやり方参考にすると引っかかるのでこっち参照→https://www.techpit.jp/courses/2/curriculums/3/sections/15/parts/51
gem 'puma',         '3.9.1'
gem 'sass-rails',   '5.0.6'
gem 'uglifier',     '3.2.0'
gem 'coffee-rails', '4.2.2'
gem 'jquery-rails', '4.3.1'
gem 'turbolinks',   '5.0.1'
gem 'jbuilder',     '2.7.0'
gem 'carrierwave',             '1.2.2'
gem 'mini_magick',             '4.7.0'


group :development do
  gem 'sqlite3', '~> 1.3.6'
  gem 'byebug',  '9.0.6', platform: :mri
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rails-footnotes'
end

group :development do
  gem 'web-console',           '3.5.1'
  gem 'listen',                '3.1.5'
  gem 'spring',                '2.0.2'
  gem 'spring-watcher-listen', '2.0.1'
end

group :production do
  gem 'fog', '1.42'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest',                 '5.10.3'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.16.2'  # これ
  gem 'guard-minitest',           '2.4.4'
end

# Windows環境ではtzinfo-dataというgemを含める必要があります
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]