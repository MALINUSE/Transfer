class CreatePeopleSims < ActiveRecord::Migration
  def change
    create_table :people_sims do |t|
      t.references :person, index: true, foreign_key: true
      t.references :sim_carte, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
