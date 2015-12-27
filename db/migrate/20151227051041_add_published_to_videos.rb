class AddPublishedToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :published, :integer, null: false, default: 1
  end
end
