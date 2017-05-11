class Tags < ActiveRecord::Migration[5.1]
  def change
    create_table(:tags) do |t|
      t.column(:term, :string)
      t.column(:recipe_id, :integer)
        t.timestamps()
  end
end
end
