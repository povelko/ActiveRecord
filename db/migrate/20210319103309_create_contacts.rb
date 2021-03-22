class CreateContacts < ActiveRecord::Migration[6.1]
  def change
	  create_table :contacts do |t|
	  	t.text :fio
	  	t.text :email
	  	t.text :sotik
	  	t.text :discription
	  	
	  	t.timestamps
	  end
  end
end
