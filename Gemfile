source "https://rubygems.org"

gem "fastlane"
gem "cocoapods"
gem "concurrent-ruby", "1.1.7"

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)
