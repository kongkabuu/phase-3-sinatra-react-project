class ChangeTheCommentTable < ActiveRecord::Migration[6.1]
  def change
    add_column :comments ,:article_id, :Integer
  end
end
