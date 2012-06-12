class AddColumnWorkerIdToStory < ActiveRecord::Migration
  def change
    add_column :stories, :worker_id, :integer
  end
end
