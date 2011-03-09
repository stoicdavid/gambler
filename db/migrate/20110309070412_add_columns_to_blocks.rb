class AddColumnsToBlocks < ActiveRecord::Migration
  def self.up
    add_column :blocks, :folio_max, :integer
    add_column :blocks, :colocaciones, :integer
  end

  def self.down
    remove_column :blocks, :colocaciones
    remove_column :blocks, :folio_max
  end
end
