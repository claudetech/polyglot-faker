require File.join(File.dirname(__FILE__), 'spec_helper')

require 'faker'
require 'polyglot_faker'

describe PolyglotFaker do
  describe '#with_locale' do
    before(:each) do
      Faker::Config.locale = :en
      expect(Faker::Config.locale).to eq(:en)
    end

    it 'should change the locale in passed block' do
      Faker.with_locale(:ja) do
        expect(Faker::Config.locale).to eq(:ja)
      end
    end

    it 'should restore the locale' do
      Faker.with_locale(:ja) { }
      expect(Faker::Config.locale).to eq(:en)
    end
  end
end
