# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gem_admin_test_1"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Musshi Tran"]
  s.date = "2014-12-01"
  s.description = "Admin panel for you"
  s.email = "musshi@rubify.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "app/controllers/gem_admin_test/admin_controller.rb",
    "app/controllers/gem_admin_test_controller.rb",
    "app/views/gem_admin_test/dashboard.html.erb",
    "app/views/gem_admin_test/index.html.erb",
    "app/views/layouts/gem_admin_test.html.erb",
    "config/routes.rb",
    "gem_admin_test_1.gemspec",
    "lib/gem_admin_test_1.rb",
    "lib/gem_admin_test_1/version.rb",
    "lib/generators/gem_admin_test/install_generator.rb",
    "lib/generators/templates/application_helper.rb",
    "lib/generators/templates/config.yml",
    "lib/generators/templates/dashboard.html.erb"
  ]
  s.homepage = "https://github.com/musshi/gem_admin_test_1"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Admin panel for you"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
      s.add_dependency(%q<simplecov>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<jeweler>, ["~> 2.0.1"])
    s.add_dependency(%q<simplecov>, [">= 0"])
  end
end

