class CreateUserMaps < ActiveRecord::Migration
  def self.up
    create_table :user_maps do |t|
      t.integer :account_id
      t.integer :hr_user_id
      t.integer :rg_user_id
      t.string :hr_user_token
      t.boolean :master_user, :default => false
      t.boolean :not_synchronized_yet, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :user_maps
  end
end
