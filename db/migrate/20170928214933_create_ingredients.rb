class CreateIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table(:ingredients) do |t|
      t.column(:name, :string)
      t.column(:amount, :string)

      t.timestamps()
    end
  end
end
