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
require "test_helper"

class WorkshopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
