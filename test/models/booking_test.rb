# == Schema Information
#
# Table name: bookings
#
#  id                    :integer          not null, primary key
#  amount_paid           :float
#  no_of_tickets         :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  customer_id           :integer          not null
#  stripe_transaction_id :string
#  workshop_id           :integer          not null
#
# Indexes
#
#  index_bookings_on_customer_id  (customer_id)
#  index_bookings_on_workshop_id  (workshop_id)
#
# Foreign Keys
#
#  customer_id  (customer_id => customers.id)
#  workshop_id  (workshop_id => workshops.id)
#
require "test_helper"

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
