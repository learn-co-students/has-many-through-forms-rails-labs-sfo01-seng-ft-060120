class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(user)
    if no_new_user(user) == false
      user.values.each do |name|
        user = User.find_or_create_by(username: name)
        self.user = user
      end
    end
  end

  def no_new_user(user)
    user[:username].blank?
  end
end
