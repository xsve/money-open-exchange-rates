version_file = 'lib/open_exchange_rates_bank/version'
require File.expand_path("../#{version_file}", __FILE__)

Gem::Specification.new do |s|
  s.name = 'money-open-exchange-rates'
  s.date = Time.now.utc.strftime('%Y-%m-%d')
  s.version = OpenExchangeRatesBank::VERSION
  s.homepage = "http://github.com/spk/#{s.name}"
  s.authors = ['Laurent Arnoud']
  s.email = 'laurent@spkdev.net'
  s.description = 'A gem that calculates the exchange rate using published ' \
    'rates from open-exchange-rates. Compatible with the money gem.'
  s.summary = 'A gem that calculates the exchange rate using published rates ' \
    'from open-exchange-rates.'
  s.extra_rdoc_files = %w(README.md)
  s.files = Dir['LICENSE', 'README.md', 'History.md', 'Gemfile', 'lib/**/*.rb',
                'test/**/*']
  s.license = 'MIT'
  s.test_files = Dir.glob('test/*_test.rb')
  s.require_paths = ['lib']
  s.required_ruby_version = '>= 1.9.3'
  s.rubygems_version = '1.3.7'
  s.add_dependency 'money', '~> 6.7'
  s.add_dependency 'monetize', '~> 1.4'
  s.add_dependency 'json', '~> 1.8'
  s.add_dependency 'open_uri_redirections', '~> 0.2.1'
  s.add_development_dependency 'rake', '~> 11'
  s.add_development_dependency 'minitest', '~> 5'
  s.add_development_dependency 'timecop', '~> 0.8'
  s.add_development_dependency 'rr', '~> 1.1'
  s.add_development_dependency 'webmock', '~> 1'
  s.add_development_dependency 'rubocop', '~> 0.41.2'
end
