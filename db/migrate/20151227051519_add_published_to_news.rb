class AddPublishedToNews < ActiveRecord::Migration
  def change
    add_column :news, :published, :integer, null: false, default: 1
  end
end
