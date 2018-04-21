class CreateGuidancenotes < ActiveRecord::Migration[5.1]
  def change
    create_table :guidancenotes do |t|
      t.integer :gdprarticle_id
      t.integer :gdprrecital_id
      t.integer :jerseylaw_id
      t.integer :category_id
      t.string :title
      t.string :link
      t.date :publication_date
      t.string :type
      t.text :summary

      t.timestamps
    end
  end
end
