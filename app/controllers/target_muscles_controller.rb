class TargetMusclesController < ApplicationController
  # GET /target_muscles
  # GET /target_muscles.xml
  def index
    @target_muscles = TargetMuscle.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @target_muscles }
    end
  end

  # GET /target_muscles/1
  # GET /target_muscles/1.xml
  def show
    @target_muscle = TargetMuscle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @target_muscle }
    end
  end

  # GET /target_muscles/new
  # GET /target_muscles/new.xml
  def new
    @target_muscle = TargetMuscle.new
    @target_muscle.exercises.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @target_muscle }
    end
  end

  # GET /target_muscles/1/edit
  def edit
    @target_muscle = TargetMuscle.find(params[:id])
  end

  # POST /target_muscles
  # POST /target_muscles.xml
  def create
    @target_muscle = TargetMuscle.new(params[:target_muscle])

    respond_to do |format|
      if @target_muscle.save
        flash[:notice] = 'TargetMuscle and Exercises where successfully created.'
        format.html { redirect_to(@target_muscle) }
        format.xml  { render :xml => @target_muscle, :status => :created, :location => @target_muscle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @target_muscle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /target_muscles/1
  # PUT /target_muscles/1.xml
  def update
    params[:target_muscle][:existing_exercise_attributes] ||= {}

    @target_muscle = TargetMuscle.find(params[:id])

    respond_to do |format|
      if @target_muscle.update_attributes(params[:target_muscle])
        flash[:notice] = 'TargetMuscle and Exercises where successfully updated.'
        format.html { redirect_to(@target_muscle) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @target_muscle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /target_muscles/1
  # DELETE /target_muscles/1.xml
  def destroy
    @target_muscle = TargetMuscle.find(params[:id])
    @target_muscle.destroy

    respond_to do |format|
      format.html { redirect_to(target_muscles_url) }
      format.xml  { head :ok }
    end
  end
end
