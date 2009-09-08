module ProgramsHelper
	
	def add_program_exercise_link(name)
    	link_to_function name do |page|
	    	page.insert_html :bottom, :program_exercise, :partial => 'program_exercise', 
	    	:object => ProgramExercise.new 
	    	page.sortable :program_exercise, :url => sort_programs_path ,:handle => "handle" 
    	end
  end
	

end
