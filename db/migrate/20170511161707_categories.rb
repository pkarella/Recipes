class Categories < ActiveRecord::Migration[5.1]
  def change
    create_table(:categories) do |t|
      t.column(:tag_id, :integer)
      t.column(:recipe_id, :integer)
        t.timestamps()
  end
end
end
