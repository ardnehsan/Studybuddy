class AddPhotoUsers < ActiveRecord::Migration
  def change
    add_column :users, :photo_id, :string
  end
end
