class ContribController < ApplicationController
	layout "bootstrap"

	def index
		@clientes = Cliente.order('nome')
    render :layout => 'mobile'
	end

  def detalhes
		@cliente = Cliente.find(params[:id])
		@produtos = Produto.order('ordem')
		@custos = Custo.order('ordem')
  end

  def confirma
  end

end
