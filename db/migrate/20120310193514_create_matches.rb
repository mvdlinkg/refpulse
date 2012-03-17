class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :visitor_id
      t.integer :local_id
      t.integer :referee_id
      t.string :stadium
      t.datetime :date

      t.timestamps
    end
  end
end
