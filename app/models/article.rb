class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 5 }

  has_many :replies
end

class Reply < ActiveRecord::Base
  belongs_to :article
end
