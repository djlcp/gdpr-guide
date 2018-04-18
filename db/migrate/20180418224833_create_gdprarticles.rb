class CreateGdprarticles < ActiveRecord::Migration[5.1]
  def change
    create_table :gdprarticles do |t|
      t.integer :jerseylaw_id
      t.integer :chapter_id
      t.string :chapter_romannum
      t.string :chapter_title
      t.integer :section_id
      t.integer :section_num
      t.string :section_title
      t.integer :article_id
      t.integer :article_num
      t.string :article_title
      t.text :article_body

      t.timestamps
    end
  end
end
