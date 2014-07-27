module PolyglotFaker
  def with_locale(locale, &block)
    old_locale = ::Faker::Config.locale
    ::Faker::Config.locale = locale
    result = block.call
    ::Faker::Config.locale = old_locale
    result
  end
end

if defined?(Faker)
  Faker.send(:extend, Polyglot::Faker)
end

