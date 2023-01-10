class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :Disease
      t.integer :Age
      t.string :gender

      t.timestamps
    end
  end
end
