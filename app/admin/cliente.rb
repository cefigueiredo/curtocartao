ActiveAdmin.register Cliente do
  config.filters = false

  index do
    column :nome
    column :email
    column :saldo
    actions
  end

end
