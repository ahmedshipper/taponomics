class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :address
      t.string :services
      t.string :charges
      t.string :review
      t.string :category

      t.timestamps null: false
    end
  end
end
