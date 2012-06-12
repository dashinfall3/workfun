class AddColumnToWorkersPseudoynm < ActiveRecord::Migration
  def change
    add_column :workers, :psuedonym, :string
  end
end
