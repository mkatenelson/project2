class AddPhoto < ActiveRecord::Migration
  def change
    add_column :drinks, :photo_url, :string
  end
end
