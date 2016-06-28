class Book < ActiveRecord::Base
  validates :hour, :employee, presence: true
  validate :hour, :check_date
  belongs_to :employee
  belongs_to :student

  def formated_hour
    self.hour.to_formatted_s(:short)
  end

  def self.not_booked
    self.where(student_id: nil)
  end

  private
  def check_date
    if (self.hour < Time.now)
      self.errors.add(:notice, "registre apenas dias para frente")
    end
  end
end
