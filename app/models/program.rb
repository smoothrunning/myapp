class Program < ActiveRecord::Base
  belongs_to :user
  has_many :program_exercises ,     :dependent => :destroy
  has_many :exercices, :through => :program_exercises 
  has_many :target_muscles, :through => :program_exercises 
  
  validates_presence_of :goal, :description , :exercise_type, :start_date, :follow_up_date

def completed_text
	self.completed? ? "Yes" : "No" 
end

 def new_program_exercise_attributes=(program_exercise_attributes)
    program_exercise_attributes.each do |attributes|
      program_exercises.build(attributes)
    end
  end



  after_update :save_program_exercises

  def existing_program_exercise_attributes=(program_exercise_attributes)

    program_exercises.reject(&:new_record?).each_with_index do |program_exercise, index|
       attributes = program_exercise_attributes[program_exercise.id.to_s]
      if attributes
         program_exercise.attributes = attributes
       else
        program_exercises.delete(program_exercise)
      end
    end
  end

  def save_program_exercises
    program_exercises.each do |program_exercise|
      program_exercise.save(false)
    end
  end


end
