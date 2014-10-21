class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.references :user
      t.string "title", :limit => 255
      t.text "description"
      t.datetime "deadline"
      t.datetime "completion_date"
      t.string "status", :limit => 15
      t.timestamps
    end
    add_index("users", "id")
  end

  def down
    drop_table :todos
  end
end
