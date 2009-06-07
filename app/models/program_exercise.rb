class ProgramExercise < ActiveRecord::Base
	belongs_to :program
	belongs_to :exercise
	belongs_to :target_muscle
	acts_as_list
	
	validates_presence_of :repititions, :weight, :exercise
end
