class Gym < ActiveRecord::Base
  has_many :employees, dependent: :destroy
  has_many :students, dependent: :destroy
  validates :name, :cnpj, :tel, presence: true
  validates :cnpj, uniqueness: true
end
