class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :folder
      t.datetime :date
      t.string :theme
      t.integer :spend_time
      t.integer :user_id

      t.timestamps
    end
  end
end
