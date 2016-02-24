class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :sexe
      t.date :date_nai
      t.string :lieu_nai
      t.string :contact
      t.string :email
      t.string :country
      t.string :city
      t.string :address
      t.string :rue
      t.string :porte
      t.string :codecustom
      t.string :num

      t.timestamps default: Time.now
    end
  end
end
