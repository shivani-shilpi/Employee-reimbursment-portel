class Employee < ApplicationRecord
  belongs_to :department
  has_many :bills

  def full_name
    "#{first_name} #{last_name}"
  end
end
