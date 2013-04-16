class AddAttachmentPrintToPrints < ActiveRecord::Migration
  def self.up
    change_table :prints do |t|
      t.attachment :print
    end
  end

  def self.down
    drop_attached_file :prints, :print
  end
end
