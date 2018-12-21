class AddAttachmentPhotoToPhones < ActiveRecord::Migration[5.1]
  def self.up
    change_table :phones do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :phones, :photo
  end
end
