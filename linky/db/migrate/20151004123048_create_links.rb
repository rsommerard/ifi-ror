class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :title, :null => false
      t.string :url, :null => false
      t.integer :score, :null => false, :default => 0

      t.timestamps null: false
    end
  end
end
