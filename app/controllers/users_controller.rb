class UsersController < ApplicationController
before_filter :admin,   :only => :destroy
  
  def index
    @users = User.all
  end
  
  def new
      @user = User.new
    end
    def show
      @user = User.find(params[:id])
    end
    def create
      @user = User.new(params[:user])
      if @user.save
        redirect_to new_customer_path, :flash => { :success => "Signed up!" }
      else
        render "new"
      end
    end
    
    def destroy
      @user.destroy
      redirect_to users_path, :flash => { :success => "User destroyed." }
    end
    
    def edit
      #@title = "Edit user"
    end

    def update
      if @user.update_attributes(params[:user])
        redirect_to @user, :flash => { :success => "Profile updated." }
      else
        #@title = "Edit user"
        render 'edit'
      end
    end
    
private
def admin
redirect_to(root_path) unless current_user.admin?
end

end
