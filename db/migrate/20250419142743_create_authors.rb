class CreateAuthors < ActiveRecord::Migration[8.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :country
      t.date :birthday

      t.timestamps
      # created_at, updated_at
    end
  end
end
