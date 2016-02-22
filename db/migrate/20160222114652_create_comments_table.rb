class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table  :comments do |t|
      t.integer   :landlord_id
      t.integer   :user_id
      t.text      :issue
      t.integer   :rating
      t.integer   :property_id
    end
  end
end
