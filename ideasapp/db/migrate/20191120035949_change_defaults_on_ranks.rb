class ChangeDefaultsOnRanks < ActiveRecord::Migration[5.2]
  def change
    
    change_table :ideas do |t|
      t.remove :down_rank, :up_rank, :total_rank
    end
  end
end
