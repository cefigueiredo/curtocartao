class EmailController < ApplicationController

  layout "bootstrap"

  def personalizado
		@clientes = Cliente.order('nome')
  end

  def envia_personalizado
      render :json => {
        :response => true
      }.to_json
  end
  def geral
  end
end
