class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :mobile, length: { is: 10 }, allow_nil: true, allow_blank: true
  validates :email, email: true
  has_many :appointments, dependent: :delete_all
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end