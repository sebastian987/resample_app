# == Schema Information
# Schema version: 20110119022206
#
# Table name: microposts
#
#  id         :integer         not null, primary key
#  content    :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Micropost < ActiveRecord::Base
  attr_accessible :content

  belongs_to :user

  validates_presence_of :content, :user_id
  validates_length_of   :content, :maximum => 140

  default_scope :order => 'created_at DESC'

  def self.from_users_followed_by(user)
    followed_ids = user.following.map(&:id)
    all(:conditions => ["user_id IN (#{followed_ids}) OR user_id = ?", user])
  end
end