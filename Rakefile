require 'rake'
require 'json'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:android) do |features|
  ENV['PLATFORM'] = "android"
  features.cucumber_opts = "features/scenarios/*.feature --exclude features/pages/ios --exclude features/step_definitions/ios --format html --out=reports.html --format pretty --guess"

end

Cucumber::Rake::Task.new(:ios) do |features|
  ENV['PLATFORM'] = "ios"
  features.cucumber_opts = "features/scenarios/*.feature  --exclude features/pages/android --exclude features/step_definitions/android --format html --out=reports.html --format pretty --guess"
end

task :clean do
  rm_rf "tmp"
  rm_rf "screenshots"
  rm_rf "screenshot.png"
  rm_rf 'reports.html'
end