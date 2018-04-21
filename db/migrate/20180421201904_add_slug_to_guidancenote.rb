class AddSlugToGuidancenote < ActiveRecord::Migration[5.1]
  def change
    add_column :guidancenotes, :slug, :string, :null => false
    add_index :guidancenotes, :slug, :unique => true
  end
end