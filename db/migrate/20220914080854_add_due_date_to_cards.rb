class AddDueDateToCards < ActiveRecord::Migration[6.1]
  def change
    add_column :cards, :due_date, :date
  end
end
