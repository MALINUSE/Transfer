class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.references :person, index: true, foreign_key: true
      t.string :number_owner
      t.string :number_sender
      t.string :type_op

      t.timestamps null: false
    end
  end
end
