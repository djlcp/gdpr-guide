class AddSlugToGdprrecital < ActiveRecord::Migration[5.1]
  def change
    add_column :gdprrecitals, :slug, :string, :null => false
    add_index :gdprrecitals, :slug, :unique => true
  end
end
