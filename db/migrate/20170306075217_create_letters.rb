class CreateLetters < ActiveRecord::Migration[5.0]
  def change
    create_table :letters do |t|
      t.string :name
      t.string :company
      t.string :email

      t.timestamps
    end
  end
end
