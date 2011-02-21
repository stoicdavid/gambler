class CreatePremios < ActiveRecord::Migration
  def self.up
    create_table :premios do |t|
      t.string  :nombre
      t.string  :descripcion
      t.decimal  :precio, :precision => 8, :scale => 2
      t.integer :sorteo_id, :null => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :premios
  end
end
