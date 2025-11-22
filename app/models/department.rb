class Department < ApplicationRecord
  has_many :employees, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :budget, numericality: { greater_than: 0, message: "must be greater than 0" }
end
