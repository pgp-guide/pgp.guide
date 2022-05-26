# -*- encoding: utf-8 -*-
# stub: pkg-config 1.1.7 ruby lib

Gem::Specification.new do |s|
  s.name = "pkg-config".freeze
  s.version = "1.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Kouhei Sutou".freeze]
  s.date = "2016-01-06"
  s.description = "pkg-config can be used in your extconf.rb to properly detect need libraries for compiling Ruby native extensions".freeze
  s.email = ["kou@cozmixng.org".freeze]
  s.homepage = "https://github.com/ruby-gnome2/pkg-config".freeze
  s.licenses = ["LGPLv2+".freeze]
  s.rubygems_version = "3.2.24".freeze
  s.summary = "A pkg-config implementation for Ruby".freeze

  s.installed_by_version = "3.2.24" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
  else
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
  end
end
