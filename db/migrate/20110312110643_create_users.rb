class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :username
      t.string :password
      t.string :user_email

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end