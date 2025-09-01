class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chats, dependent: :destroy
  has_many :quizzes, through: :chats, dependent: :destroy
  has_many :user_answers, dependent: :destroy
  has_many :scores, dependent: :destroy
  has_one_attached :photo
end
