class CreateBarbers < ActiveRecord::Migration[6.1]
  def change
  	create_table :barbers do |t|
  		t.text :name

  		t.timestamps
  	end
  	Barber.create :name => 'Jon'
  	Barber.create :name => 'Iron'
  	Barber.create :name => 'Dana'

  end
end
