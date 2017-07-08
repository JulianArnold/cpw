class AddAttachmentImageToProducts < ActiveRecord::Migration
  def up
    change_table :products do |t|
      t.attachment :image
    end
  end

  def down
    remove_attachment :products, :image
  end
end
