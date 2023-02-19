# == Schema Information
#
# Table name: workshops
#
#  id               :integer          not null, primary key
#  description      :text
#  end_date         :date
#  end_time         :string
#  name             :string
#  registration_fee :integer
#  remaining_sits   :integer
#  start_date       :date
#  start_time       :string
#  total_sits       :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Workshop < ApplicationRecord
  validates :name, :description, presence:true
  validates :start_date, :end_date, :start_date, :end_time, presence: true
  validates :total_sits, :registration_fee, presence: true, numericality: true
  validates :end_date, comparison: { greater_than: :start_date, message: 'cannot be before start_date'}

  has_many :bookings
  has_many :customers, through: :bookings

  def total_duration
    "From #{start_date} to #{end_date}"
  end

  def daily_workshop_hours
    "#{((start_time.to_time - end_time.to_time)/1.hours).abs} hours"
  end

  def daily_duration
    "Everyday #{start_time} to #{end_time} (#{daily_workshop_hours})"
  end
end
