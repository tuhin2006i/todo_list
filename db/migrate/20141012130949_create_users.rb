class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string "username", :limit => 25
      t.string "password_digest"
      t.string "name", :limit => 60
      t.string "email", :limit => 100, :default => "", :null => false
      t.string "phone", :limit => 25
      t.timestamps
    end
    add_index("users", "username")
  end
  def down
    drop_table :users
  end
end
