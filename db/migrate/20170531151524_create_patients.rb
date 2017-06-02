class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :born_on
      t.string :diagnosis

      t.timestamps
    end
  end
end
