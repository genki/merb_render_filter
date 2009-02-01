# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{merb_render_filter}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Genki Takiuchi"]
  s.date = %q{2009-02-01}
  s.description = %q{Merb plugin that provides {before|after}_render filters.}
  s.email = %q{genki@s21g.com}
  s.extra_rdoc_files = ["README", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README", "Rakefile", "TODO", "lib/merb_render_filter", "lib/merb_render_filter/controller_ext.rb", "lib/merb_render_filter/merbtasks.rb", "lib/merb_render_filter.rb", "spec/fixture", "spec/fixture/app", "spec/fixture/app/controllers", "spec/fixture/app/controllers/application.rb", "spec/fixture/app/controllers/posts.rb", "spec/fixture/app/views", "spec/fixture/app/views/posts", "spec/fixture/app/views/posts/index.html.erb", "spec/fixture/config", "spec/fixture/config/router.rb", "spec/merb_render_filter_spec.rb", "spec/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://blog.s21g.com/genki}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{merb}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Merb plugin that provides {before|after}_render filters.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<merb>, [">= 1.0.8.1"])
    else
      s.add_dependency(%q<merb>, [">= 1.0.8.1"])
    end
  else
    s.add_dependency(%q<merb>, [">= 1.0.8.1"])
  end
end
