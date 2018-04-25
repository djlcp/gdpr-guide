class AddManagerToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :manager, :boolean, default: false
  end
end