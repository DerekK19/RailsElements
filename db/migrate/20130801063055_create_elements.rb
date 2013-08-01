class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.int :atomic_number
      t.string :name
      t.string :symbol
      t.int :atomic_group
      t.int :period
      t.double :atomic_mass
      t.int :isotope_number
      t.int :boiling_point
      t.int :melting_point
      t.int :series_id

      t.timestamps
    end
  end
end
