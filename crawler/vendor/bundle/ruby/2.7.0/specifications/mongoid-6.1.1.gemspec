# -*- encoding: utf-8 -*-
# stub: mongoid 6.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "mongoid".freeze
  s.version = "6.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Durran Jordan".freeze]
  s.date = "2017-06-06"
  s.description = "Mongoid is an ODM (Object Document Mapper) Framework for MongoDB, written in Ruby.".freeze
  s.email = ["mongodb-dev@googlegroups.com".freeze]
  s.homepage = "http://mongoid.org".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "3.3.17".freeze
  s.summary = "Elegant Persistence in Ruby for MongoDB.".freeze

  s.installed_by_version = "3.3.17" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activemodel>.freeze, ["~> 5.0"])
    s.add_runtime_dependency(%q<mongo>.freeze, [">= 2.4.1", "< 3.0.0"])
  else
    s.add_dependency(%q<activemodel>.freeze, ["~> 5.0"])
    s.add_dependency(%q<mongo>.freeze, [">= 2.4.1", "< 3.0.0"])
  end
end
