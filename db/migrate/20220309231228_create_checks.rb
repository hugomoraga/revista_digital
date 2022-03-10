class CreateChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :checks do |t|
      t.boolean :first, :default => 0
      t.boolean :second, :default => 0
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
