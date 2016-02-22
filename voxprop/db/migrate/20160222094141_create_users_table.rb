class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table  :users do |t|
      t.string    :username
      t.string    :password
      t.string    :email_address
      t.text      :bio
      t.image     :avatar

      t.timestamps
    end
  end
end
