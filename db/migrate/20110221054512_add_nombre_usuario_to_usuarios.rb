class AddNombreUsuarioToUsuarios < ActiveRecord::Migration
  def self.up
    add_column :usuarios, :nombre_usuario, :string
  end

  def self.down
    remove_column :usuarios, :nombre_usuario
  end
end
