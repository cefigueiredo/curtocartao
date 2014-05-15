class Cliente < ActiveRecord::Base
	has_many :consumos
  has_many :contribuicaos
  has_many :recargas

  # TODO: Testar unitariamente após merge do branch com rspec
  validates :nome, :email, presence: true
end
