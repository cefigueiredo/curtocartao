class Recarga < ActiveRecord::Base
  belongs_to :cliente
	scope :da_data, lambda {|data| where("DATE(created_at) = ?", data)}
	scope :no_periodo, lambda {|hora_inicial, hora_final| where("created_at between ? and ?", hora_inicial, hora_final)}
end
