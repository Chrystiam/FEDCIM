class Documento < ActiveRecord::Base
  # attr_accessible :title, :body
  #paperclip
  attr_accessible :precios
  has_attached_file :precios,
  :url  => "/assets/documentos/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/documentos/:id/:style/:basename.:extension"

  validates_attachment_presence :precios
  #validates_attachment_size :foto, :less_than => 5.megabytes
  validates_attachment_content_type :precios, :content_type => ['application/pdf'],
  :message => "solo se permiten pdf"
end
