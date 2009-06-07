# User Model

class User < ActiveRecord::Base
  has_many :programs

# Program Model
class Program < ActiveRecord::Base
  belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
end

#Programs Controller

def index
    if @current_user.admin_user?
      if (params[:search])
        @user = User.find(:all, :conditions => ['login LIKE ?', "%#{params[:search]}%"])
        @programs = Program.find(:all, :conditions => ['id LIKE ?', "%#{params[:search]}%"])
      else
         @programs = Program.find(:all)
      end
    else
      @programs = Program.find_all_by_user_id(@current_user.id)
    end