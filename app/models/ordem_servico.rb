class OrdemServico < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :veiculo
end
