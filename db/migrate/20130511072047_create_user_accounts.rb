class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.string :userName
      t.integer :userId
      t.string :emailAddress
      t.string :password

      t.timestamps
    end
  end
end
