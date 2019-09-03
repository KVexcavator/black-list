class CreateCostomers < ActiveRecord::Migration[5.2]
  def change
    create_table :costomers do |t|
      t.string :name
      t.string :phone
      t.text :discription
      t.boolean :blacklist

      t.timestamps
    end
  end
end
