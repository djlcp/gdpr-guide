class AddSlugToJerseylaw < ActiveRecord::Migration[5.1]
  def change
    add_column :jerseylaws, :slug, :string, :null => false
    add_index :jerseylaws, :slug, :unique => true
  end
end
