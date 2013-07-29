class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.series_name :string

      t.timestamps
    end
  end
end
