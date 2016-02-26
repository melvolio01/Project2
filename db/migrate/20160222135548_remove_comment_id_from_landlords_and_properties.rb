class RemoveCommentIdFromLandlordsAndProperties < ActiveRecord::Migration
  def change
    remove_column :properties, :comment_id
  end
end
