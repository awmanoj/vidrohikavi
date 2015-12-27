class AddPublishedToTributes < ActiveRecord::Migration
  def change
    add_column :tributes, :published, :integer, null: false, default: 1
  end
end
