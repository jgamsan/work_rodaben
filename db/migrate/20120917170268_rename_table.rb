class RenameTable < ActiveRecord::Migration
  def up
    rename_table :spree_admin_suppliers, :spree_suppliers
  end

  def down
  end
end
