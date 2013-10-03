class CreateChurches < ActiveRecord::Migration
  def change
    create_table :churches do |t|
      t.string :name
      t.string :address
      t.string :church_phone
      t.string :church_email

      t.timestamps
    end
  end
end
