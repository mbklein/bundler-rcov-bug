### Description

One file is missing from my rcov coverage report when I run rcov using `bundle exec` instead of on its own. I've done everything I can to minimize outside interference, including wiping out my global gemset (except for bundler) and even my system gems.

### Environment
`bundle config` is empty.
Bundler version: `Bundler version 1.0.17`
Ruby version: `ruby 1.8.7 (2011-06-30 patchlevel 352) [i686-darwin10.8.0]`
Rubygems version: `1.8.6`
RVM: yes, `rvm 1.6.32 by Wayne E. Seguin (wayneeseguin@gmail.com) [https://rvm.beginrescueend.com/]`
rubygems-bundler gem: not installed
open_gem gem: not installed
global gemset contains nothing but bundler
project gemset is empty before `bundle install`

### Steps to reproduce
1. Clone the [small example repo](https://github.com/mbklein/bundler-rcov-bug).
2. Trust the .rvmrc file.
3. `bundle install`
4. `rcov -T -Ilib:spec --exclude gems/*,spec/*,ruby/* spec/*_spec.rb spec/**/*_spec.rb`
5. 4 examples run and pass, and all three source files under `lib` were checked for coverage.
6. `bundle exec rcov -T -Ilib:spec --exclude gems/*,spec/*,ruby/* spec/*_spec.rb spec/**/*_spec.rb`
7. Same 4 examples run and pass, but only two files were checked for coverage.

### Notes
1. I first noticed the issue while running the rspec/rcov rake tasks, but once I traced it to bundle exec, I took rake out of the equation for simplicity's sake.
2. I tried rspec 2.6 as well, and got the same result.
3. `which rcov` and `bundle exec which rcov` point to the same executable.