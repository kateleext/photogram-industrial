class ChangePhotosCountColumnName < ActiveRecord::Migration[8.0]
  def change
    rename_column(:users, :photo_count, :photos_count)
  end
end
