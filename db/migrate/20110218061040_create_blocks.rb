class CreateBlocks < ActiveRecord::Migration
  def self.up
    create_table :blocks do |t|
      t.integer :num_boletos
      t.integer :folio
      t.integer :sorteo_id, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :blocks
  end
end
