class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.column(:name, :string)
      t.column(:ingredients_id, :integer)
      t.column(:instructions_id, :integer)
      t.column(:tag_id, :integer)
      t.column(:rating, :integer)

      t.timestamps()
    end
  end
end
