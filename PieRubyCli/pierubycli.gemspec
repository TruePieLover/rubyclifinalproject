Gem::Specification.new do |s|
  s.name        = 'pierubycli'
  s.version     = '0.0.0'
  s.date        = '2019-01-13'
  s.summary     = "Pie Cli Ruby Scrapper"
  s.description = "Cli gamespot scrapper"
  s.authors     = ["Brandon Teich"]
  s.email       = 'brandonteich123@gmail'
  s.files       = ["pie_clis_crapper.rb"]

  s.homepage    =
    'http://rubygems.org/gems/pierubycli'
  s.license       = 'MIT'
  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.executables   = ["PieCliScrapper"]
  s.add_dependency "nokogiri"


end