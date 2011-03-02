class AddResponsableIdToUsuarios < ActiveRecord::Migration
  def self.up
    add_column :usuarios, :responsable_id, :integer, :references => :usuarios
  end

  def self.down
    remove_column :usuarios, :responsable_id
  end
end
