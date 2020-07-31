class ChangedDatatypeForUsersImgUrl < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :img_url, :binary
  end
end
