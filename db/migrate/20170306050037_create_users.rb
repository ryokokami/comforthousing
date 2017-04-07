class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :tel
      t.text :message

      t.timestamps
    end
  end
end
