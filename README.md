# PolyglotFaker [![Build Status][travis-img]][travis-link]

Gem to simplify [Faker gem](https://github.com/stympy/faker)
usage with languages using non-ascii characters.

## Installation

Add

```ruby
gem 'polyglot_faker'
```

to your `Gemfile` or run

```
gem install 'polyglot_faker'
```

## Usage

With this gem, you can use `with_locale` method, so for example
if you are using `:ja` as a locale and want to generate a valid
email, you can use

```ruby
Faker.with_locale(:en) { Faker::Internet.email }
```

[travis-img]: https://travis-ci.org/claudetech/polyglot-faker.svg?branch=master
[travis-link]: https://travis-ci.org/claudetech/polyglot-faker
