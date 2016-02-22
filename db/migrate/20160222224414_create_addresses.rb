class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :person, index: true, foreign_key: true
      t.string :domicil
      t.string :rue
      t.string :porte
      t.string :email
      t.string :contry
      t.string :city

      t.timestamps null: false
    end
  end
end
