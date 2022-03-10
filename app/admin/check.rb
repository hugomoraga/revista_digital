ActiveAdmin.register Check do
    menu label: "Verificacion de posts"

    permit_params do
        permitted = [:id, :first, :second]
        permitted << :other if params[:action] == 'create' && current_user.admin?
        permitted
    end
     
end
