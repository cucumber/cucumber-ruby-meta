# cucumber-ruby-meta

meta-repository to handle all repository linked to Cucumber-ruby:
 - [cucumber-ruby](https://github.com/cucumber/cucumber-ruby)
 - [cucumber-ruby-core](https://github.com/cucumber/cucumber-ruby-core)
 - [cucumber-ruby-wire](https://github.com/cucumber/cucumber-ruby-wire)

Uses [meta](https://github.com/mateodelnorte/meta) to handle multi-repositories.

## Using this repo

First, install [meta](https://github.com/mateodelnorte/meta) if this is not done yet:

```shell
npm install -g meta
```

Clone the repositories useful for `cucumber-ruby` development:

```shell
meta git update
```

This will clone `cucumber-ruby`, `cucumber-ruby-core` and `cucumber-ruby-wire` inside the repo.


## Helpers

The gems linked in this meta repository need references to each other. Run the following command to handle that:

```shell
source scripts/setup_env
```

You can use `meta` to run commands on all sub-repos, for example:

```shell
meta exec bundle             # Will run bundler in all sub-repos
meta exec "bundle exec rake" # Will run tests on all sub-repos
```
