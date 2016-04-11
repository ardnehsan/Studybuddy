class AddIdtoEntries < ActiveRecord::Migration
  def change
   add_column :entries, :cohort_id, :integer
  end
end
