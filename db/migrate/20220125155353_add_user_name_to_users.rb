class AddUserNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_name, :string, default: "", null: false
  end
end
