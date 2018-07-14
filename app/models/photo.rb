# == Schema Information
#
# Table name: photos
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  user_id    :integer
#  holiday_id :integer
#  image_url  :string
#  updated_at :datetime         not null
#

class Photo < ApplicationRecord
  belongs_to :holiday
  belongs_to :user
  has_many :comments
end
