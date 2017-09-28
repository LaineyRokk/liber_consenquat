ENV['RACK_ENV'] = 'test'
require('rspec')
require('pg')
require('sinatra/activerecord')
require('recipe')
require('tag')
require('ingredient')

RSPEC.configure do |config|
  config.after(:each) do
    Recipe.all.each(&:destroy)
    Tag.all.each(&:destroy)
    Ingredient.all.each(&:destroy)
  end
end
