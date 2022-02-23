ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :role
  #
  # or
  #
  
  index do
    # column "number", :id
    selectable_column
    column :id
    column :email
    column :encrypted_password
    column :password

    column :name
    column :lastname
    column :role
    actions
  end


  form title: 'Editar' do |f|
    inputs 'Editar Usuario' do
      input :email
      input :name
      input :lastname
      input :role
      input :password
      input :password_confirmation

  end
  actions

end


  menu label: "Usuarios"


   permit_params do
     permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :role, :name, :lastname, :password, :password_confirmation]
     permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end
  
end
