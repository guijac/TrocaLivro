class LivroBanco < ActiveRecord::Base
  has_attached_file :foto, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  attr_accessible :autor, :editora, :isbn, :titulo, :foto
  
  has_many :usuariolivros
end