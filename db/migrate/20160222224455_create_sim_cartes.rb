class CreateSimCartes < ActiveRecord::Migration
  def change
    create_table :sim_cartes do |t|
      t.string :numero

      t.timestamps null: false
    end
  end
end
