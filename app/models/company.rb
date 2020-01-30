class Company < ApplicationRecord
  has_many :users
  has_many :reports
  has_many :transactions, through: :reports

  validates :name, presence: true
  validates :adress, presence: true
end
