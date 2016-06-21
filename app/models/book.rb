class Book < ActiveRecord::Base
  validates :hour, :employee, presence: true
  #has_many :employees
  #has_many :students
end
