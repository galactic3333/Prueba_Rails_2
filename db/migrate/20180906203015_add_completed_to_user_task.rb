class AddCompletedToUserTask < ActiveRecord::Migration[5.2]
  def change
    add_column :user_tasks, :completed, :boolean, default: false
  end
end
