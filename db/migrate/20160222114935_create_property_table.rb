class CreatePropertyTable < ActiveRecord::Migration
  def change
    create_table  :properties do |t|
      t.string    :address1
      t.string    :address2
      t.string    :postcode
      t.string    :borough
      t.integer   :landlord_id
      t.text      :property_image

      t.timestamps
    end
  end
end
