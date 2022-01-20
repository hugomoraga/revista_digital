class AddVerefiedOneToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :verediedone, :boolean, :default => 0
  end
end
