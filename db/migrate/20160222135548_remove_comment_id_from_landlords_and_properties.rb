class RemoveCommentIdFromLandlordsAndProperties < ActiveRecord::Migration
  def change
    remove_column :landlords, :comment_id
    remove_column :properties, :comment_id
  end
end