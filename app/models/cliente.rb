class Cliente < ActiveRecord::Base
  has_many :veiculos
  has_many :ordem_servicos
  mount_uploader :foto, FotoClienteUploader
end
