class TargetMuscle < ActiveRecord::Base
has_many :exercises,     :dependent => :destroy
has_many :programs , :through => :program_exercises
validates_presence_of :muscle
validates_associated :exercises

  def new_exercise_attributes=(exercise_attributes)
    exercise_attributes.each do |attributes|
      exercises.build(attributes)
    end
  end



  after_update :save_exercises

  def existing_exercise_attributes=(exercise_attributes)
    exercises.reject(&:new_record?).each do |exercise|
      attributes = exercise_attributes[exercise.id.to_s]
      if attributes
        exercise.attributes = attributes
      else
        exercises.delete(exercise)
      end
    end
  end

  def save_exercises
    exercises.each do |exercise|
      exercise.save(false)
    end
  end

end
