Gem::Specification.new do |s|
  s.name = "retriable"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alejandro Andres"]
  s.date = "2012-07-03"
  s.description = "A very basic gem to go and retry code that may raise exceptions"
  s.summary = s.description
  s.email = "fuzzy.alej@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "VERSION",
    "lib/retriable.rb",
    "test/test_helper.rb",
    "test/retriable_test.rb"
  ]
  s.homepage = "http://github.com/fuzzyalej/retriable"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

