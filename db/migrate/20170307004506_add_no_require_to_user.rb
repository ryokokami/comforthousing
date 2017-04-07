class AddNoRequireToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :norequire, :integer
  end
end
