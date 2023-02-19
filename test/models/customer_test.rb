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
require "test_helper"

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
