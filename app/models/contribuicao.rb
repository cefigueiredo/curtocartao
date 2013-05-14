class Contribuicao < ActiveRecord::Base
  belongs_to :cliente
  has_many :contribuicaos_produtos
  has_many :produtos, :through => :contribuicaos_produtos
  has_many :contribuicaos_custos
  has_many :custos, :through => :contribuicaos_custos
end

class ContribuicaosCusto < ActiveRecord::Base
  belongs_to :contribuicao
  belongs_to :custo
end

class ContribuicaosProduto < ActiveRecord::Base
  belongs_to :contribuicao
  belongs_to :produto
end
