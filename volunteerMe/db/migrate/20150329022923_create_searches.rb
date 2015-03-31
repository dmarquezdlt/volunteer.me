class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :entry
      t.string :date
      t.string :time_start
      t.string :state
      t.string :commitment_type

      t.timestamps
    end
  end
end
