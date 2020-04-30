require 'rake'
require 'json'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:android) do |features|
  mkdir_p(["./tmp", "./reports"], verbose: false)
  features.cucumber_opts = "features/scenarios/*.feature --exclude features/pages/ios --exclude features/step_definitions/ios --format json --out reports/output.html --format pretty --guess PLATFORM=ANDROID"
end

Cucumber::Rake::Task.new(:ios) do |features|
  mkdir_p(["./tmp", "./reports"], verbose: false)
  features.cucumber_opts = "features/scenarios/*.feature --exclude features/pages/android --exclude features/step_definitions/android --format json --out reports/output.html --format pretty --guess PLATFORM=IOS"
end

task :clean do
  rm_rf "tmp"
  rm_rf "screenshots"
  rm_rf "screenshot.png"
  rm_rf "reports"
end