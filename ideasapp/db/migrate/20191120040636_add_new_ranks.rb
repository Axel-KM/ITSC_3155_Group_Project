class AddNewRanks < ActiveRecord::Migration[5.2]
  def change
    change_table :ideas do |t|
      t.remove :up_rank, :down_rank
      t.integer :up_rank, :default => 0
      t.integer :down_rank, :default => 0
      t.integer :total_rank, :default => 0
    end
  end  
end
