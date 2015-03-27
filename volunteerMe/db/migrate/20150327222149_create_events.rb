class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.text :requirements
      t.string :commitment_type
      t.date :date
      t.time :time_start
      t.time :time_end
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :spots
      t.references :organization, index: true

      t.timestamps
    end
  end
end
