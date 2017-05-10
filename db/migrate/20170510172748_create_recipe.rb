class CreateRecipe < ActiveRecord::Migration[5.1]
  def change
    create_table(:recipes) do |t|
      t.column(:name, :string)
      t.column(:instructions, :string)
      t.column(:ingredients, :string)

      t.timestamps()
    end
  end
end
