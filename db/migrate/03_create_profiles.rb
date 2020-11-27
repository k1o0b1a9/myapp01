class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :avatar
      t.text :description
      t.integer :account_id

      t.timestamps
    end
  end
end
