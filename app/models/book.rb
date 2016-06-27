class Book < ActiveRecord::Base
  validates :hour, :employee, presence: true
  belongs_to :employee
  belongs_to :student

  def formated_hour
    self.hour.to_formatted_s(:short)
  end

  def self.not_booked
    self.where(student_id: nil)
  end
end
