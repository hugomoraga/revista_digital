class RemoveVerifiedoneFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :verifiedone, :string
  end
end
