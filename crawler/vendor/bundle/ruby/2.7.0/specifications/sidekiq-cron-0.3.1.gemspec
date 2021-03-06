# -*- encoding: utf-8 -*-
# stub: sidekiq-cron 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "sidekiq-cron".freeze
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ondrej Bartas".freeze]
  s.date = "2015-08-21"
  s.description = "Enables to set jobs to be run in specified time (using CRON notation)".freeze
  s.email = "ondrej@bartas.cz".freeze
  s.extra_rdoc_files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.files = ["LICENSE.txt".freeze, "README.md".freeze]
  s.homepage = "http://github.com/ondrejbartas/sidekiq-cron".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.17".freeze
  s.summary = "Sidekiq Cron helps to add repeated scheduled jobs".freeze

  s.installed_by_version = "3.3.17" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<sidekiq>.freeze, [">= 2.17.3"])
    s.add_runtime_dependency(%q<rufus-scheduler>.freeze, [">= 2.0.24"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_development_dependency(%q<shoulda-context>.freeze, [">= 0"])
    s.add_development_dependency(%q<rack>.freeze, [">= 0"])
    s.add_development_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_development_dependency(%q<jeweler>.freeze, ["~> 1.8.3"])
    s.add_development_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_development_dependency(%q<sdoc>.freeze, [">= 0"])
    s.add_development_dependency(%q<slim>.freeze, [">= 0"])
    s.add_development_dependency(%q<sinatra>.freeze, [">= 0"])
    s.add_development_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_development_dependency(%q<shotgun>.freeze, [">= 0"])
  else
    s.add_dependency(%q<sidekiq>.freeze, [">= 2.17.3"])
    s.add_dependency(%q<rufus-scheduler>.freeze, [">= 2.0.24"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<shoulda-context>.freeze, [">= 0"])
    s.add_dependency(%q<rack>.freeze, [">= 0"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_dependency(%q<jeweler>.freeze, ["~> 1.8.3"])
    s.add_dependency(%q<minitest>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<sdoc>.freeze, [">= 0"])
    s.add_dependency(%q<slim>.freeze, [">= 0"])
    s.add_dependency(%q<sinatra>.freeze, [">= 0"])
    s.add_dependency(%q<mocha>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<shotgun>.freeze, [">= 0"])
  end
end
