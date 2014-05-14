class Cliente < ActiveRecord::Base
	has_many :consumos
  has_many :contribuicaos
  has_many :recargas


  def recarregar_cinco_reais
    valor = 5.0
    self.recargas.create(valor: valor)
    self.saldo += valor
    self.save!
  end
end
