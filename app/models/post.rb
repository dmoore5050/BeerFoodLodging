class Post < ActiveRecord::Base
  acts_as_taggable

  belongs_to :user
  belongs_to :category
  has_many   :comments

  validates_presence_of :title
  validates_presence_of :body
  validates_presence_of :category_id

  def category
    @category = Category.find( self.category_id )
  rescue ActiveRecord::RecordNotFound
    self.update_attribute :category_id, nil
  end
end
