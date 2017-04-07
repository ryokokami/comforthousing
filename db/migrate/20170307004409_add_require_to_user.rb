class AddRequireToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :require, :integer
  end
end
