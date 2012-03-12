class CreateReferees < ActiveRecord::Migration
  def change
    create_table :referees do |t|
      t.string :name
      t.integer :age
      t.string :nationality
      t.float :rate
      t.float :trend

      t.timestamps
    end
  end
end
