class CreateTfeatures < ActiveRecord::Migration[5.0]
  def change
    create_table :tfeatures do |t|
      t.string :name
      t.references :feature, foreign_key: true

      t.timestamps
    end
  end
end
