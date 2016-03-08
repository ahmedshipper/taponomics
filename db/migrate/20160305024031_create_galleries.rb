class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :galleries, [:user_id, :created_at]
  end
end
