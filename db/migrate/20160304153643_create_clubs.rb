class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :address
      t.string :services
      t.string :charges
      t.string :review
      t.string :category

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :clubs, [:user_id, :created_at]
  end
end
