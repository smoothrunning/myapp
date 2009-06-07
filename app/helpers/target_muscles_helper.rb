module TargetMusclesHelper

def add_exercise_link(name)
    link_to_function name do |page|
    page.insert_html :bottom, :exercises, :partial => 'exercise', :object => Exercise.new
    end
end
end
