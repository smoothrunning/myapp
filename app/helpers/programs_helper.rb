module ProgramsHelper
	
	def add_program_exercise_link(name)
    	link_to_function name do |page|
	    	page.insert_html :bottom, :program_exercise, :partial => 'program_exercise', 
	    	:object => ProgramExercise.new 
    	end
  end
	
	
end
