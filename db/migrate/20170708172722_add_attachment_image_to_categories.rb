class AddAttachmentImageToCategories < ActiveRecord::Migration
  def up
    change_table :categories do |t|
      t.attachment :image
    end
  end

  def down
    remove_attachment :categories, :image
  end
end
