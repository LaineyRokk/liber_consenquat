class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table(:tags) do |t|
      t.column(:category, :string)
      t.column(:name, :string)

      t.timestamp()
    end
  end
end
