class Gym < ActiveRecord::Base
  has_many :employees
  validates :name, :cnpj, :tel, presence: true
end
