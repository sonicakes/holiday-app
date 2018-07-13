# == Schema Information
#
# Table name: holidays
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  created_at :datetime         not null
#  user_id    :integer
#  updated_at :datetime         not null
#

class Holiday < ApplicationRecord
    belongs_to :user, :optional => true
end
