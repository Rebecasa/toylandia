class AddNameToToys < ActiveRecord::Migration[5.2]
  def change
    add_column :toys, :name, :string
  end
end
