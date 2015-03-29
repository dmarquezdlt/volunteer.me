class CreateSuperpowers < ActiveRecord::Migration
  def change
    create_table :superpowers do |t|
      t.string :name
      t.references :volunteer

      t.timestamps
    end
  end
end
