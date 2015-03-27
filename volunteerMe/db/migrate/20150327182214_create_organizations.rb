class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string  :name
      t.string  :category
      t.string  :email
      t.string  :phone
      t.string  :website
      t.text    :bio
      t.text    :address
      t.string  :city
      t.string  :state
      t.string  :country

      t.timestamps
    end
  end
end
