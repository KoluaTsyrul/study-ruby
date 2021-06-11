# frozen_string_literal: true

desc 'Test practice with rake'
task :test do
  # sh "mkdir reports"
  #
  # sh 'cucumber features/support/sign_in.feature --format json --out "reports/cucumber.json"'

  # %w['mkdir reports' 'cucumber features/support/sign_in.feature --format json --out "reports/cucumber.json"'].each do |cmd|
  #   sh "rake #{cmd}"
  # end
  %w[create_dir run_cucumber].each do |cmd1|
    sh "rake #{cmd1}"
  end
end

task :create_dir do
  # sh "mkdir reports"
  Dir.mkdir 'reports' unless Dir.exist? 'reports'
end

task :run_cucumber do
  sh 'cucumber features/support/sign_in.feature --format json --out "reports/cucumber.json"'
end

task :run_few_test do
  start_at = Time.now
  p start_at

  t1 = Thread.new { sh 'cucumber features/support/sign_in.feature --format json --out "reports/cucumber1.json"' }
  t2 = Thread.new { sh 'cucumber features/support/api.feature --format json --out "reports/cucumber.json"' }

  t1.join
  t2.join

  finish_at = Time.now
  run_took = Time.at(finish_at - start_at)
  p finish_at
  p run_took
end
