class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :referee_id
      t.integer :match_id
      t.integer :user_id
      t.string :comment
      t.float :rate

      t.timestamps
    end
  end
end
