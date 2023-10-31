class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :okaras, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_okaras, through: :likes, source: :okara

  def already_liked?(okara)
    self.likes.exists?(okara_id: okara.id)
  end
end
