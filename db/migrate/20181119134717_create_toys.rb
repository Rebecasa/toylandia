class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :description
      t.string :location
      t.integer :price
      t.string :category
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
