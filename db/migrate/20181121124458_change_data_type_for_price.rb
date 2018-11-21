class ChangeDataTypeForPrice < ActiveRecord::Migration[5.2]
  def change
    change_column :toys, :price, 'float USING CAST(price AS float)'
  end
end
