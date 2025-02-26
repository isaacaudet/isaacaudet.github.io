source "https://rubygems.org"

# Uncomment the line below if you want to use GitHub Pages
gem "github-pages", group: :jekyll_plugins

# If you want to use Jekyll directly instead of GitHub Pages, use this:
# gem "jekyll", "~> 4.2.0"

group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem "jekyll-seo-tag", "~> 2.7"
  gem "jekyll-paginate", "~> 1.1"
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Lock kramdown version for security
gem "kramdown", ">= 2.3.1"

# Lock addressable for security
gem "addressable", ">= 2.8.0" 