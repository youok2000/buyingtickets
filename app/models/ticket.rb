class Ticket < ApplicationRecord
  validates :name, {presence: true}
  validates :gender, {presence: true}
  validates :phone_number, {presence: true, uniqueness: true}
  validates :email, {presence: true, uniqueness: true}
end
