class UsersController < ApplicationController

    before_action :logged_in_user, only: [:index, :show, :edit, :update, :destroy]
    # before_action :correct_user,   only: [:edit, :update]
 
    def index
        #@users = User.all
        @users = User.paginate(page: params[:page],per_page: 10)
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
        @user.IsActive = true
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Bienvenido. La creación fue exitosa !"
            redirect_to @user
        else
          render 'new'
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update_attributes(user_params)
            flash[:success] = "Perfil actualizado"
            redirect_to @user
        else
            render 'edit'
        end
    end

    def destroy
        User.find(params[:id]).destroy
        flash[:success] = "Usuario eliminado"
        redirect_to users_url
    end


    private

        def user_params
            params.require(:user).permit(:IdentityNumber, :Name, :email, :Address, :Phone, :IsActive, :city_id, :profile_id, :password,
                                        :password_confirmation)
        end

        # Confirms a logged-in user.
        def logged_in_user
            unless logged_in?
                store_location
                flash[:danger] = "Por favor Iniciar sesión"
                redirect_to login_url
            end
        end
 
end