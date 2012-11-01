class ConsumoController < ApplicationController

	layout "mobile"

	def index
		@clientes = Cliente.order('nome')
	end

	def detalhes
		@cliente = Cliente.find(params[:id])
		@produtos = Produto.order('nome')
	end

	def novo_cliente
		@cliente = Cliente.new

    respond_to do |format|
      format.html
      format.json { render :json => @cliente }
    end
	end

	def create
    @cliente = Cliente.new(params[:cliente])

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to consumo_path, :notice => 'Cliente was successfully created.' }
        format.json { render :json => @cliente, :status => :created, :location => @cliente }
      else
        format.html { render :action => "new" }
        format.json { render :json => @cliente.errors, :status => :unprocessable_entity }
      end
    end
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
