class CreateSubchurches < ActiveRecord::Migration
  def change
    create_table :subchurches do |t|
      t.string :subchurch_name
      t.string :subchurch_address
      t.integer :subchurch_phone_no
      t.integer :id_no

      t.timestamps
    end
  end
end
