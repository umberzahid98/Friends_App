class AddUserIdToDosts < ActiveRecord::Migration[5.2]
  def change
    add_column :dosts, :user_id, :integer
    add_index :dosts, :user_id
  end
end
