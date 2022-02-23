ActiveAdmin.register Post do

  index do
    # column "number", :id
    selectable_column
    column :id
    column 'Titulo', :title
    column 'Categoria', :category
    column 'Verificado', :verifiedone
    column 'Publicado', :published
    column 'Fecha de Publicacion', :published_at

    actions

  end


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :published, :published_at, :user_id, :slug, :category_id, :verifiedone
  #
  # or
  #
   permit_params do
     permitted = [:title, :description, :published, :published_at, :user_id, :slug, :category_id, :category, :verifiedone]
     permitted << :other if params[:action] == 'create' && current_user.admin?
     permitted
   end
  
end
