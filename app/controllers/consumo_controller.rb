class ConsumoController < ApplicationController

	layout "mobile"

	def index
		@clientes = Cliente.order('nome')
	end

	def detalhes
		@cliente = Cliente.find(params[:id])
	end

end
