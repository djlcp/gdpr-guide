class CreateJerseylaws < ActiveRecord::Migration[5.1]
  def change
    create_table :jerseylaws do |t|
      t.integer :category_id
      t.integer :part_id
      t.integer :part_num
      t.string :part_title
      t.integer :article_id
      t.integer :article_num
      t.string :article_title
      t.text :article_body

      t.timestamps
    end
  end
end
