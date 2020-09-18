class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :items
         has_many :purchases

        #  with_options presence: true do
           
  # validate :nickname
  # validate :email
  # validate :password, length: {minimum: 6}

          #  end
end
