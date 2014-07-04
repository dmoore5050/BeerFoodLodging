class ChangePostsPublishedOnToDatetime < ActiveRecord::Migration
  def change
    change_column :posts, :published_on, :datetime
  end
end
