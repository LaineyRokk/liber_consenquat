require('spec_helper')

describe Ingredient do
  describe '#recipe' do
    it 'established the one to many relationship' do
      swedish_pancakes = Recipe_create({:name => 'Swedish Pancakes', :instructions => 'Many'})
      eggs = Ingredient_create({:name => 'eggs', :amount => '3 large', :recipe_id => 'swedish_pancakes_id'})
      expect(eggs.recipe).to(eq('swedish_pancakes'))
    end
  end
end
