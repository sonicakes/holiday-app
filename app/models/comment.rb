# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  user_id    :integer
#  photo_id   :integer
#  message    :string
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :photo
  belongs_to :user
end
