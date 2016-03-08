class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :question
      t.string :answer

      t.timestamps null: false
    end
  end
end