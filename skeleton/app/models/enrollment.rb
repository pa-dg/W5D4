# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord

    belongs_to( :users, {
        class_name: :User,
        primary_key: :id,
        foreign_key: :student_id} )


    belongs_to( :courses, {
        class_name: :Course,
        foreign_key: :course_id,
        primary_key: :id}
        )

end
