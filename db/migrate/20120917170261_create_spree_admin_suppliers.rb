class CreateSpreeAdminSuppliers < ActiveRecord::Migration
  def change
    create_table :spree_admin_suppliers do |t|
      t.string :name
      t.string :title
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website
      t.text :notes
      t.string :twitter
      t.string :facebook
      t.text :description

      t.timestamps
    end
  end
end
