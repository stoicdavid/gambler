class AddRolesMaskToUsuarios < ActiveRecord::Migration
  def self.up
    add_column :usuarios, :roles_mask, :integer
  end

  def self.down
    remove_column :usuarios, :roles_mask
  end
end
