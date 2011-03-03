class AddPromotorIdToBlocks < ActiveRecord::Migration
  def self.up
    add_column :blocks, :promotor_id, :integer, :references => :usuarios
  end

  def self.down
    remove_column :blocks, :promotor_id
  end
end
