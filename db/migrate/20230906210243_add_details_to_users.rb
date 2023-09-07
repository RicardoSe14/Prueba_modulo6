class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :fono, :string
    add_column :users, :profesion, :string
    add_column :users, :cargo, :string
    add_column :users, :tiempo, :string
    add_column :users, :info, :string
  end
end
