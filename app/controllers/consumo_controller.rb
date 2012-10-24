class ConsumoController < ApplicationController

	layout "mobile"

	def index
		@clientes = Cliente.order('nome')
	end

	def detalhes
		@cliente = Cliente.find(params[:id])
		@produtos = Produto.order('nome')
	end

	def confirma
		cliente = Cliente.find(params[:id])
		consumo = params[:consumo]

		valor = 0

		consumo.each do |produto|
			valor += Produto.find(produto[0].to_i).preco * produto[1].to_i
		end

		cliente.saldo -= valor
		cliente.save!

		@cliente = cliente
		@valor = valor
	end

end
