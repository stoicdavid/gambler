class CreateBoletos < ActiveRecord::Migration
  def self.up
    create_table :boletos do |t|
      t.integer :folio
      t.string  :nombre
      t.string  :rfc
      t.string  :dir
      t.string  :cp
      t.string  :ciudad  
      t.string  :telefono
      t.string  :email

      
      t.timestamps
    end
  end

  def self.down
    drop_table :boletos
  end
end
