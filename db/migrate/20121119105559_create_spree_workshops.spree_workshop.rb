# This migration comes from spree_workshop (originally 20120929183156)
class CreateSpreeWorkshops < ActiveRecord::Migration
  def change
    return if table_exists?(:spree_workshops)
    create_table :spree_workshops do |t|
      t.string :name
      t.string :address
      t.integer :town_id
      t.string :phone
      t.string :fax
      t.string :email
      t.string :notes
      t.decimal :price, :precision => 6, :scale => 2, :default => 0.00

      t.timestamps
    end
  end
end
