class Reply < ActiveRecord::Base
  validates :text, presence: true,
                    length: { minimum: 5 }

  belongs_to :article
  belongs_to :user
end
