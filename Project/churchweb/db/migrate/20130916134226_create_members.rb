class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :member_name
      t.date :date_of_birth
      t.integer :member_phone_no
      t.string :gender
      t.date :baptism_date
      t.string :church_name
      t.string :subchurch_name
      t.string :profession
      t.string :marriage_status
      t.integer :sub_id
      t.integer :member_id
      t.string :member_email_id

      t.timestamps
    end
  end
end
