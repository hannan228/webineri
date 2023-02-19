# == Schema Information
#
# Table name: customers
#
#  id                 :integer          not null, primary key
#  contact_number     :string
#  email              :string
#  full_name          :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  stripe_customer_id :string
#
class Customer < ApplicationRecord
  validates :full_name, :contact_number, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :bookings
  has_many :workshops, through: :bookings
end
