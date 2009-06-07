class ProgramDrawer
	
	def self.draw(program)
		pdf = PDF::Writer.new (:paper => "A4")
		pdf.select_font "Times-Roman"
		pdf.text "Smooth Running", :font_size => 72, :justification => :center

		
 		pdf.text 'Name:', :justification => :left, :font_size => 18 
# 		pdf.move_pointer(13)
#  		pdf.y
  		pdf.add_text (120,pdf.y, program.user.login, 18 )
		
		pdf.text program.goal,:font_size => 12
  		pdf.text program.description
 
  
 		program.program_exercises.each do |e|
 			pdf.text e.exercise.name
 			pdf.text e.target_muscle.muscle
	   	  	pdf.text e.repititions.to_s          	
   			pdf.text e.weight 
   			pdf.text e.exercise.instruction  			
    		# <%= image_tag program_exercise.exercise.photo.url(:thumb) %> </td>
		end
      	pdf.render 
	end
			
end