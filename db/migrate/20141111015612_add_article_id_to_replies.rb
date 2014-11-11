class AddArticleIdToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :article_id, :integer
  end
end
