require('spec_helper')

describe Recipe do
  describe '#ingredients' do
    it 'established the many to one relationship' do
      swedish_pancakes = Recipe_create({:name => 'Swedish Pancakes', :instructions => 'Many'})
      eggs = Ingredient_create({:name => 'eggs', :amount => '3 large', :recipe_id => 'swedish_pancakes_id'})
      expect(swedish_pancakes.ingredients).to(eq([eggs]))
    end
    it 'returns an empty array if there are no ingredients'
      swedish_pancakes = Recipe.create({:name => 'Swedish Pancakes', :instructions => 'Many'})
      expect(swedish_pancakes.ingredients).to eq []
    end
  end
end
