require 'rake'
require 'json'

task :run_tests, [:platform] do |_task, args|
  platform = args.platform.upcase

  ENV['PLATFORM'] = platform
  puts "<< Platform: #{args.platform} >>"
  mkdir_p(["./tmp", "./reports"], verbose: false)
  system "cucumber features/scenarios/*.feature" +
             " --format json --out=reports/mobile_run.json --format html --out=reports/mobile_report.html"

end

task :clean do
  rm_rf "tmp"
  rm_rf "screenshots"
  rm_rf "screenshot.png"
  rm_rf 'reports'
end