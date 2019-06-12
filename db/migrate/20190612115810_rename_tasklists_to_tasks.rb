class RenameTasklistsToTasks < ActiveRecord::Migration[5.2]
  def change
    rename_table :tasklists, :tasks
  end
end
