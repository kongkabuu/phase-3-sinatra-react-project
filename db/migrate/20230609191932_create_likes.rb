class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.integer :article_id
      t.integer :likes
      t.timestamps
    end
  end
end
