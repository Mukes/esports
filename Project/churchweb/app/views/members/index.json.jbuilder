json.array!(@members) do |member|
  json.extract! member, :member_name, :date_of_birth, :member_phone_no, :gender, :baptism_date, :church_name, :subchurch_name, :profession, :marriage_status, :sub_id, :member_id, :member_email_id
  json.url member_url(member, format: :json)
end
