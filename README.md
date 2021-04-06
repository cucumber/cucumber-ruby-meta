# cucumber-ruby-meta

meta-repository to handle all repository linked to Cucumber-ruby:
 - [cucumber-ruby](https://github.com/cucumber/cucumber-ruby)
 - [cucumber-ruby-core](https://github.com/cucumber/cucumber-ruby-core)
 - [cucumber-ruby-wire](https://github.com/cucumber/cucumber-ruby-wire)

Uses [meta](https://github.com/mateodelnorte/meta) to handle multi-repositories.

## Using this repo

It is highly recommended you clone this repo as a sibling of the `cucumber/cucumber`
monorepo. When you do this, the dependencies on `cucumber-*` gems from the monorepo
will use the local files.

When you have cloned, install [meta](https://github.com/mateodelnorte/meta):

```shell
npm install -g meta
```

Clone the `cucumber-ruby`, `cucumber-ruby-core` and `cucumber-ruby-wire` repositories:

```shell
meta git update
```

To create a new branch in all repos:

```shell
meta git checkout -b the-branch
```

## Helpers

You can use `meta` to run commands on all sub-repos, for example:

```shell
meta exec bundle             # Will run bundler in all sub-repos
meta exec "bundle exec rake" # Will run tests on all sub-repos
```
