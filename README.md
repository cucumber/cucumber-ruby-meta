# cucumber-ruby-meta

meta-repository to handle all repository linked to Cucumber-ruby:
 - [cucumber-ruby](https://github.com/cucumber/cucumber-ruby)
 - [cucumber-ruby-core](https://github.com/cucumber/cucumber-ruby-core)
 - [cucumber-ruby-wire](https://github.com/cucumber/cucumber-ruby-wire)

Use [meta](https://github.com/mateodelnorte/meta)

## Helpers

The gems linked in this meta repository need references to each other. Run the following command to handle that:

```shell
source scripts/setup_env
```

The `Makefile` will also allow you to run tests on all sub-repos:

```shell
make
```

Alternatively, you can use `meta`to handle that:

```shell
meta exec bundle             # Will run bundler in all sub-repos
meta exec "bundle exec rake" # Will run tests on all sub-repos
```