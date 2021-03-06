class CreateLandlordTable < ActiveRecord::Migration
  def change
    create_table  :landlords do |t|
      t.integer   :property_id
      t.integer   :rating
      t.string    :name
      t.string    :borough

      t.timestamp
    end
  end
end