class ProductGroups < ActiveRecord::Migration
  def change
    create_table :product_groups do |t|
      t.references :product_group
      t.string      :name
      t.string      :description
      t.integer     :position , :default => 1
      t.string      :link
      t.attachment  :main_picture
      t.attachment  :extra_picture

      t.timestamps
    end
  end
end