class Veiculo < ActiveRecord::Base
  belongs_to :cliente
  has_many :ordem_servicos
end
