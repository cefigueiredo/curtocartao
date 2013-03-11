class Consumo < ActiveRecord::Base
  after_create :salva_kissmetrics
	belongs_to :cliente

	scope :da_data, lambda {|data| where("data = ?", data)}
	scope :resumo, select("produto_id, sum(quantidade) as quantidade").group("produto_id")
	scope :por_cliente, select("cliente_id, produto_id, sum(quantidade) as quantidade").group("cliente_id, produto_id")
	scope :no_periodo, lambda {|hora_inicial, hora_final| where("created_at between ? and ?", hora_inicial, hora_final)}

  def salva_kissmetrics
    produto = Produto.find(self.produto_id)
    KM.identify(self.cliente.email)
    KM.record('Purchased', {'Purchased Product Name' => produto.nome, 'Quantity' => self.quantidade, 'Price' => produto.preco * self.quantidade })
  end
end
