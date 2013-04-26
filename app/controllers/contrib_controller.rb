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
		@cliente = Cliente.find(params[:id])
    prodcount = params[:prodcount]
    contribval = params[:contribval]
    
    total = 0
    @contribuicao = @cliente.contribuicaos.create()
    contribval.each do |cont|
      idx = cont[0]
      value = cont[1].to_i
      if value > 0
        total += value
        @contribuicao.contribuicaos_custos.create(
          :custo_id => idx, :valor => cont[1])
      end
    end

    prodcount.each do |prod|
      idx = prod[0]
      quantidade = prod[1].to_i
      if quantidade > 0
        @contribuicao.contribuicaos_produtos.create(
          :produto_id => idx, :quantidade => prod[1])
      end
    end

    @cliente.saldo -= total
		@cliente.save!
  end

end
