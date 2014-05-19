class RecargasController < ApplicationController

  before_filter :load_cliente

  def cinco_reais
    @cliente.recarregar_cinco_reais
    render json: { saldo: number_to_currency(@cliente.saldo) }.to_json
  end

  def dez_reais
    @cliente.recarregar_dez_reais
    render json: { saldo: number_to_currency(@cliente.saldo) }.to_json
  end

  def vinte_reais
    @cliente.recarregar_vinte_reais
    render json: { saldo: number_to_currency(@cliente.saldo) }.to_json
  end

  def cinquenta_reais
    @cliente.recarregar_cinquenta_reais
    render json: { saldo: number_to_currency(@cliente.saldo) }.to_json
  end

  private
    def number_to_currency(value)
      ActionController::Base.helpers.number_to_currency(value)
    end

    def load_cliente
      @cliente = Cliente.find(params[:cliente_id])
    end
end
