class AddCompletedOnToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :completed_at, :datetime
  end
end
