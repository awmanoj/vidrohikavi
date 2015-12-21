class CreateTributes < ActiveRecord::Migration
  def change
    create_table :tributes do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
