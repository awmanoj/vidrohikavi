class AddPublishedToPoems < ActiveRecord::Migration
  def change
    add_column :poems, :published, :integer, null: false, default: 1
  end
end
