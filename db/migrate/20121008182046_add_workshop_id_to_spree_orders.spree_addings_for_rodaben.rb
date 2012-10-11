# This migration comes from spree_addings_for_rodaben (originally 20121008174009)
class AddWorkshopIdToSpreeOrders < ActiveRecord::Migration
  def change
  add_column :spree_orders, :workshop_id, :integer, :default => nil
  end
end
