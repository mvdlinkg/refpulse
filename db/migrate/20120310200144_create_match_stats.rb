class CreateMatchStats < ActiveRecord::Migration
  def change
    create_table :match_stats do |t|
      t.integer :match_id
      t.integer :foulLocal
      t.integer :foulVisitor
      t.integer :offsideLocal
      t.integer :offsideVisitor
      t.integer :yellowLocal
      t.integer :yellowVisitor
      t.integer :redLocal
      t.integer :redVisitor
      t.integer :penaltiesVisitor
      t.integer :penaltiesLocal

      t.timestamps
    end
  end
end
