class ChangesUserDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :img_url, :string
  end
end
