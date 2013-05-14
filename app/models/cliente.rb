class Cliente < ActiveRecord::Base
	has_many :consumos
  has_many :contribuicaos
  has_many :recargas
end
