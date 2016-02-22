class CreateLandlordTable < ActiveRecord::Migration
  def change
    create_table  :comments do |t|
      t.integer   :property_id
      t.integer   :rating
      t.string    :name
      t.string    :borough
      t.integer   :comment_id
  end
end
