class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :gym
  validates :name, :email, :password, :tel, :gym, presence: true
  #TODO
  #validar idade >= 0
  has_one :book
end
