class CreateClients < ActiveRecord::Migration[6.1]
    def change
  		create_table :clients do |t|
  		t.text :name
  		t.text :phone
  		t.text :date
  		t.text :barber
  		t.text :color

  		t.timestamps #(создает в базе два поля "created_at"-дата создания сущности "updated_at"-дата обновления сущности)


  	end
  end
end
