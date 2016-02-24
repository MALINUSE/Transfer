class CreateSimCartes < ActiveRecord::Migration
  def change
    create_table :sim_cartes do |t|
      t.string :numero
      t.boolean :status, default: false
      t.datetime :date_active

      t.timestamps default: Time.now
    end
  end
end
