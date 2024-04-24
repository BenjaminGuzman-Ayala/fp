# == Schema Information
#
# Table name: schools
#
#  id         :integer          not null, primary key
#  address    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_schools_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class School < ApplicationRecord
  belongs_to :user
  has_many :programs, dependent: :destroy
  has_many :students, dependent: :destroy
  has_many :curriculums

  def self.ransackable_attributes(auth_object = nil)
    ["name"]
  end
end
