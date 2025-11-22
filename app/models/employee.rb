class Employee < ApplicationRecord
  belongs_to :department

  # NAME VALIDATIONS
  validates :first_name, presence: true
  validates :last_name, presence: true

  # EMAIL VALIDATION (custom message added)
  validates :email,
            presence: true,
            format: { with: URI::MailTo::EMAIL_REGEXP, message: "must contain @" },
            uniqueness: { message: "this email is already taken" }

  # SALARY VALIDATION
  validates :salary,
            numericality: { greater_than: 0, message: "must be greater than 0" }

  # DEPARTMENT MUST BE SELECTED
  validates :department_id, presence: true
end
