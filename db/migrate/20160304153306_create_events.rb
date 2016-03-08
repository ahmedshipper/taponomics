class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :tittle
      t.string :date
      t.string :address

      t.timestamps null: false
    end
  end
end
