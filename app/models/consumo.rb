class Consumo < ActiveRecord::Base
	belongs_to :cliente

	scope :da_data, lambda {|data| where("data = ?", data)}
	scope :resumo, select("produto_id, sum(quantidade) as quantidade").group("produto_id")
end
