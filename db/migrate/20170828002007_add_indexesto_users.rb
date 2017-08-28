class AddIndexestoUsers < ActiveRecord::Migration[5.1]
  def up
    execute <<~SQL
    ALTER TABLE users
    ADD INDEX index_users_on_first_name  (first_name),
    ADD INDEX index_users_on_last_name  (last_name),
    ADD INDEX index_users_on_email_address  (email_address),
    ADD INDEX index_users_on_address_zip  (address_zip), 
    ALGORITHM = INPLACE,
    LOCK = NONE
    SQL
  end

  # def change
  #   change_table :users, bulk: true do |t|
  #     t.index :first_name, algorithm: :inplace
  #     t.index :last_name, algorithm: :inplace
  #     t.index :email_address, algorithm: :inplace
  #     t.index :address_zip, algorithm: :inplace
  #   end
  # end

  # def up
  #   add_index :users, :first_name
  #   add_index :users, :last_name
  #   add_index :users, :email_address
  #   add_index :users, :address_zip
  # end

  def down
    # raise ActiveRecord::IrreversibleMigration
    remove_index :users, :first_name
    remove_index :users, :last_name
    remove_index :users, :email_address
    remove_index :users, :address_zip
  end
end
