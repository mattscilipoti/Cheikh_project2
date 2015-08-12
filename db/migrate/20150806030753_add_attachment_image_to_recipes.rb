# mms: looks like you were working with an image upload tool.  This should have been done in a branch, then it wouldn't be cruft left over in "master".
class AddAttachmentImageToRecipes < ActiveRecord::Migration
  def self.up
    change_table :recipes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :recipes, :image
  end
end
