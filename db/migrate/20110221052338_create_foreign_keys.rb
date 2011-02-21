class CreateForeignKeys < ActiveRecord::Migration
  def self.up
    add_foreign_key "blocks", ["sorteo_id"], "sorteos", ["id"]
    add_foreign_key "boletos", ["block_id"], "blocks", ["id"]
    add_foreign_key "premios", ["sorteo_id"], "sorteos", ["id"]
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
