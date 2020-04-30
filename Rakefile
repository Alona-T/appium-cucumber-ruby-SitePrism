require 'rake'
require 'json'
require 'cucumber/rake/task'

# task :run_tests, [:platform] do |_task, args|
#   platform = args.platform.upcase

#   ENV['PLATFORM'] = platform
#   puts "<< Platform: #{args.platform} >>"
#   mkdir_p(["./tmp", "./reports"], verbose: false)
#   system "cucumber features/scenarios/*.feature" +
#             # " --exclude features/pages/android" +
#             " --format json --out=reports/mobile_run.json --format html --out=reports/mobile_report.html"

# end

Cucumber::Rake::Task.new(:android) do |features|
  ENV['PLATFORM'] = "ANDROID"
  features.cucumber_opts = "features/scenarios/*.feature --exclude features/pages/android --exclude features/step_definitions/ios_dashboard_steps.rb --format html --out=reports.html --format pretty --guess"

end

# Cucumber::Rake::Task.new(:ios) do |features|
#   ENV['PLATFORM'] = "IOS"
#   features.cucumber_opts = "features/scenarios/*.feature  --exclude features/pages/android --format json --out=reports/mobile_run.json --format html --out=reports/mobile_report.html --format pretty"
# end

task :clean do
  rm_rf "tmp"
  rm_rf "screenshots"
  rm_rf "screenshot.png"
  rm_rf 'reports.html'
end