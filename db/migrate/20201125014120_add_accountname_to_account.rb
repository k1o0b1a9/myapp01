class AddAccountnameToAccount < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :accountname, :string, :unique => true, :null => false, :default => ""
  end
end
