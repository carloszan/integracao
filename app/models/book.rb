class Book < ActiveRecord::Base
  validates :hour, :employee, presence: true
  belongs_to :employee
  belongs_to :student
end
