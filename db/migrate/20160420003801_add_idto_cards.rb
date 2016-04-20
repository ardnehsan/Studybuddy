class AddIdtoCards < ActiveRecord::Migration
  def change
    add_column :cards, :cohort_id, :integer
  end
end
