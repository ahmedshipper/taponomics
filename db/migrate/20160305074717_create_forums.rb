class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :question
      t.string :answer

      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :forums, [:user_id, :created_at]
  end
end
