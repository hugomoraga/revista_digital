ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
  

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Últimos posts agregados" do
          ul do
            Post.last(5).map do |post|
              li link_to(post.title, admin_post_path(post))
            end
          end
        end
      end

      column do
        panel "Usuarios" do
          ul do
            li "Usuarios registrados: #{User.count}"
            li "Administradores registrados: #{User.admin.count}"
          end
        end
      end

    
    end

  

  end # content
end