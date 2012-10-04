# This migration comes from spree_workshop (originally 20120930163601)
class CreateSpreeTowns < ActiveRecord::Migration
  def change
    create_table :spree_towns do |t|
      t.integer :state_id
      t.string :name

      t.timestamps
    end
  end
end
