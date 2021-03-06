class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes['username'].blank? }

=begin
  def users_attributes=(users_attributes)
    users_attributes.values.each do |users_attribute|
      user = User.find_or_create_by(users_attribute)
      self.post_users.build(user: user)
    end
  end
=end
end
