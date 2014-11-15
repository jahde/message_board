class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 5 }

  has_many :replies
  belongs_to :user
end

# rails g migration add_article_id_to_replies article_id:integer
