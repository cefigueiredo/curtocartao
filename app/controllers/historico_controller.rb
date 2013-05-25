class HistoricoController < ApplicationController
  def detalhes
    @cliente = nil
    consumos = nil
    recargas = nil 
    if params[:startdate]
      @cliente = Cliente.find(params[:id])
      consumos = Consumo.da_data(params[:startdate])
      consumos = consumos.do_cliente(params[:id])
      recargas = Recarga.da_data(params[:startdate])
      recargas = recargas.do_cliente(params[:id])
    else
      @cliente = Cliente.find(params[:id])
      consumos = Consumo.do_cliente(params[:id])
      recargas = Recarga.do_cliente(params[:id])
    end
    @historico = []
    consumos.each do |consumo|
      produto = Produto.find(consumo.produto_id)
      @historico << {
        :created_at => consumo.created_at,
        :produto => produto.nome,
        :quantidade => consumo.quantidade,
        :valor => produto.preco * consumo.quantidade,
      }
    end

		@historico = @historico.find_all{ |p| not p[:produto].include? "Recarga" }
    @total_consumo = {
      :valor => @historico.map{ |x| x[:valor] }.reduce(:+),
      :quantidade => @historico.map{ |x| x[:quantidade] }.reduce(:+),
    }

		produtos = Produto.order('ordem').find_all{ |p| not p.nome.include? "Recarga" }
    @quantidade_produtos = []
    produtos.each do |produto| 
      @quantidade_produtos << {
        :produto => produto.nome,
        :quantidade => @historico.find_all { |p| p[:produto] == produto.nome }.map{ |x| x[:quantidade] }.reduce(:+),
      }
    end
    recargas.each do |recarga|
      @historico << {
        :created_at => recarga.created_at,
        :produto => 'Recarga',
        :quantidade => '-',
        :valor => recarga.valor,
      }
    end
    @historico = @historico.sort_by { |obj| obj[:created_at] }
    @recarga_total = { 
      :valor => recargas.map{ |x| x.valor }.reduce(:+),
      :quantidade => recargas.length }
    render :layout => 'bootstrap'
  end
end
