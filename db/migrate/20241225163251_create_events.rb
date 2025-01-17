class CreateEvents < ActiveRecord::Migration[8.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.decimal :price

      t.timestamps
    end
  end
end
