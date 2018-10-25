class CreateJoinTableDoctorSpecialty < ActiveRecord::Migration[5.2]
  def change
    create_join_table :doctors, :specialties do |t|

      t.belongs_to :doctor, index: true
      t.belongs_to :specialty, index: true
      # t.index [:doctor_id, :specialty_id]
      # t.index [:specialty_id, :doctor_id]
    end
  end
end
