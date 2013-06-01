class EmailController < ApplicationController

  layout "bootstrap"

  def personalizado
		@clientes = Cliente.order('nome')
  end

  def geral
  end
end
