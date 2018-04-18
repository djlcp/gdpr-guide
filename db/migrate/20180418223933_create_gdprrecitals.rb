class CreateGdprrecitals < ActiveRecord::Migration[5.1]
  def change
    create_table :gdprrecitals do |t|
      t.integer :jerseylaw_id
      t.integer :gdprarticles_id
      t.integer :recital_id
      t.integer :recital_num
      t.string :recital_title
      t.text :recital_body

      t.timestamps
    end
  end
end
