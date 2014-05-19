class RecargasController < ApplicationController

  def cinco_reais
    @cliente = Cliente.find(params[:cliente_id])
    @cliente.recarregar_cinco_reais

    render json: { saldo: number_to_currency(@cliente.saldo) }.to_json
  end

  def dez_reais
    @cliente = Cliente.find(params[:cliente_id])
    @cliente.recarregar_dez_reais

    render json: { saldo: number_to_currency(@cliente.saldo) }.to_json
  end

  private
    def number_to_currency(value)
      ActionController::Base.helpers.number_to_currency(value)
    end
end
