class ContadorController < ApplicationController
	def index
		@dias = Consumo.select(:data).map(&:data).uniq
	end
end
