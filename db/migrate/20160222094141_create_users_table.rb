class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table  :users do |t|
      t.string    :username
      t.string    :password_digest
      t.string    :email_address
      t.text      :profile_pic

      t.timestamps
    end
  end
end
