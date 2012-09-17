class AddSpecificFieldsToVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :tire_width_id, :integer
    add_column :spree_variants, :tire_serial_id, :integer
    add_column :spree_variants, :tire_innertube_id, :integer
    add_column :spree_variants, :tire_gr, :boolean
    add_column :spree_variants, :tire_speed_code_id, :integer
    add_column :spree_variants, :tire_rf, :boolean
    add_column :spree_variants, :tire_season, :integer
  end
end
