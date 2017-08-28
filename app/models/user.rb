# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  first_name        :string(16)
#  last_name        :string(255)
#  email_address    :string(255)
#  address_line_one :string(255)
#  address_line_two :string(255)
#  address_city     :string(255)
#  address_state    :string(2)
#  address_zip      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class User < ApplicationRecord
end
