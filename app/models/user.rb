class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :messages, dependent: :destroy
  has_many :articles
  has_many :replies

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

class Message < ActiveRecord::Base
  belongs_to :user
end
