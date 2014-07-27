module PolyglotFaker
  def with_locale(locale, &block)
    old_locale = ::Faker::Config.locale
    ::Faker::Config.locale = locale
    result = block.call
    ::Faker::Config.locale = old_locale
    result
  end
end


Faker.send(:extend, PolyglotFaker) if defined?(Faker)
