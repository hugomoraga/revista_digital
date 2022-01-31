class CreateOpinions < ActiveRecord::Migration[6.0]
  def change
    create_table :opinions do |t|
      t.string :title
      t.string :description
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
