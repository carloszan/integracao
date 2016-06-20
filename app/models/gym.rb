class Gym < ActiveRecord::Base
  has_many :employees, dependent: :destroy
  validates :name, :cnpj, :tel, presence: true
end
