class ContadorController < ApplicationController
	def index
		@dias = Consumo.select(:data).order('data desc').map(&:data).uniq
	end

	def detalhes
		@data = params[:data]
		@consumos = Consumo.da_data(@data).resumo
	end
end
