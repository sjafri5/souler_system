class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :number
    	t.string :email

      t.timestamps
    end
  end
end
