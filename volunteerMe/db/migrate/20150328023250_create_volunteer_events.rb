class CreateVolunteerEvents < ActiveRecord::Migration
  def change
    create_table :volunteer_events do |t|
      t.belongs_to :volunteer, index:true
      t.belongs_to :event, index:true
      t.boolean :commited?

      t.timestamps null:false
    end
  end
end
