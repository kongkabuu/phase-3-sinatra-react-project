class CreateArticle < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :image_path
      t.integer :likes
      t.timestamps

    end
  end
end
