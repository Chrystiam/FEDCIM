class AddAttachmentPreciosToDocumentos < ActiveRecord::Migration
  def self.up
    change_table :documentos do |t|
      t.attachment :precios
    end
  end

  def self.down
    drop_attached_file :documentos, :precios
  end
end
