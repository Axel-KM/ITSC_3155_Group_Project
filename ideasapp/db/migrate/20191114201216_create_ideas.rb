class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.text :text
      t.string :title
      t.string :type
      t.string :labelled
      t.integer :up_rank
      t.integer :down_rank
      t.integer :total_rank

      t.timestamps
    end
  end
end
