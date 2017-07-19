$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))

require "bundler/gem_tasks"
require "rspec/core/rake_task"
require 'report_builder'

RSpec::Core::RakeTask.new(:spec)

desc "Run the report"
task :report do
  strTime = Time.now.inspect.gsub!(":","-")
  options = {
      json_path: File.dirname(__FILE__) + '/junit_reports/**',
      report_path: File.dirname(__FILE__) + '/results/ExecutionReport_' + strTime,
      report_types: ['html'],
      report_tabs: ['overview', 'features', 'scenarios', 'errors'],
      report_title: 'Test Results',
      compress_images: false,
      additional_info: {'environment' => 'POC'}
  }

  ReportBuilder.build_report options
end
