class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  def unique_commenting_users
    users = []
    self.comments.each do |comment|
      users << comment.user
    end
    users = users.uniq
  end

  def categories_attributes=(category)
    category.values.each do |name|
      if name.values[0] != ""
        category = Category.find_or_create_by(name)
        self.categories << category
      end
    end
  end
end
