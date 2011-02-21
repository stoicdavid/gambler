class AddBlockIdToBoletos < ActiveRecord::Migration
  def self.up
    add_column :boletos, :block_id, :integer, :null => false
  end

  def self.down
    remove_column :boletos, :block_id
  end
end
