class UpdateUserModel < ActiveRecord::Migration
  def change
    add_column :users, :profile_pic, :text
  end
end
