REPOS = $(wildcard cucumber-ruby*)

default: $(patsubst %,test-%,$(REPOS))
.PHONY: default

test-%: % %/Gemfile.lock
	cd $< && bundle exec rspec
.PHONY: test-%

%/Gemfile.lock: % %/Gemfile
	cd $< && bundle install
