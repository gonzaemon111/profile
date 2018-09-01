source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem "devise"
gem "cancancan"
gem "rails-admin"
gem "rails", '~> 5.2.1'
gem "mysql2", '>= 0.4.4', '< 0.6.0'
gem "puma", '~> 3.11'
gem "jbuilder", '~> 2.5'
gem "redis", '~> 4.0'
gem "bcrypt", '~> 3.1.7'
gem "mini_magick", '~> 4.8'
gem "capistrano-rails", group: :development
gem "bootsnap", '>= 1.1.0', require: false
gem "rack-cors"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry-rails"
  gem "rubocop", require: false
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "rails-controller-testing"
end

group :development do
  gem "listen", '>= 3.0.5', '< 3.2'
  gem "spring"
  gem "spring-watcher-listen", '~> 2.0.0'
end
