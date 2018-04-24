class AddSlugToGdprarticle < ActiveRecord::Migration[5.1]
  def change
    add_column :gdprarticles, :slug, :string, :null => false
    add_index :gdprarticles, :slug, :unique => true
  end
end
