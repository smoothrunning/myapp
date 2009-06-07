class ProgramsController < ApplicationController
  # GET /programs
  # GET /programs.xml
  before_filter :set_pagetitle
  before_filter :login_required

   def set_pagetitle
	@pagetitle = "Programs"
   end
        

  def index
    if current_user.admin_user?
       if (params[:search]).blank?
         @programs = Program.find(:all, :include => :user, :order => 'users.login')
      else
          @programs = Program.find(:all, :include => :user, :order => 'users.login', :conditions => ['users.login LIKE ?', "%#{params[:search]}%"])
        end
    else
      @programs = Program.find_all_by_user_id(@current_user.id ,:order => :goal, :include => :user)
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @programs }
     
    end
  end




  # GET /programs/1
  # GET /programs/1.xml
  def show
    @program = Program.find(params[:id] , :order => "program_exercises.position", :include => [:program_exercises])
 	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @program}
      format.pdf do
         	send_data ProgramDrawer.draw(@program), :filename => 'yourprogram.pdf', :type => 'application/pdf', :disposition => 'inline'
  	  end
    end
  end

  # GET /programs/new
  # GET /programs/new.xml
  def new
    @program = Program.new
	@program.program_exercises.build
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @program }
    end
  end

  # GET /programs/1/edit
  def edit
    @program = Program.find(params[:id],:order => 'program_exercises.position', :include => [:program_exercises])
  end

  # POST /programs
  # POST /programs.xml
  def create
    @program = Program.new(params[:program])

    respond_to do |format|
      if @program.save
        flash[:notice] = 'Program was successfully created.'
        format.html { redirect_to(@program) }
        format.xml  { render :xml => @program, :status => :created, :location => @program }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @program.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /programs/1
  # PUT /programs/1.xml
  def update
    @program = Program.find(params[:id])

    respond_to do |format|
      if @program.update_attributes(params[:program])
        flash[:notice] = 'Program was successfully updated.'
        format.html { redirect_to(@program) }
 #		format.html { render :action => "edit" }
 
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @program.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /programs/1
  # DELETE /programs/1.xml
  def destroy
    @program = Program.find(params[:id])
    @program.destroy

    respond_to do |format|
      format.html { redirect_to(programs_url) }
      format.xml  { head :ok }
    end
  end
  
  def sort
# debugger

#	link_to_function params[:program_exercise] do |page|
#		page.sortable 'program_exercise' 
#	end
   	params[:program_exercise].each_with_index do |id, index|
#		if not id.empty?
			ProgramExercise.update(id, :position => index+1)

#		end
  	end
	render :nothing => true
  end

  
end
