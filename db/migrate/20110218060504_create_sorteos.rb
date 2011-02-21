class CreateSorteos < ActiveRecord::Migration
  def self.up
    create_table :sorteos do |t|
      t.string :titulo
      t.string :descripcion
      t.integer :num_boletos
      
      t.timestamps
    end
  end

  def self.down
    drop_table :sorteos
  end
end
