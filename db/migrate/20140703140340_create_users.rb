class CreateUsers < ActiveRecord::Migration
  # Write your migrations here
  def change
    create_table :users do |u|
      u.string :name
      u.string :password_digest
      u.integer :happiness
      u.integer :nausea
      u.integer :tickets
      u.integer :height
      u.boolean :admin
    end
  end
end
