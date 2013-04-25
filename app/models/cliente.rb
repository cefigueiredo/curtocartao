class Cliente < ActiveRecord::Base
	has_many :consumos
  has_many :contribuicaos
end
