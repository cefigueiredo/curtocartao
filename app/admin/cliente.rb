ActiveAdmin.register Cliente do

  filter :nome
  filter :email

  index do
    column :nome
    column :email
    column :saldo
    column :created_at
    actions
  end

end
