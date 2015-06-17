require 'iconv'

Tod::App.controllers :user do

  get :new do
    @user = User.new
    render '/user/new'
  end

  post :create do
      password = params[:user][:password]
      user = params[:user][:user]
      role = params[:user][:role]
      
      if role == 'Usuario' || role == 'Administrador'
        @user = User.new
        @user.password= password
        @user.user= user
        @user.role= role
        @user.save
        flash[:success] = t('user.new.result.success')
        redirect '/'
      else
        flash[:danger] = t('user.new.result.error_role')
        redirect '/user/new'
      end
  end

  get :login, :map => '/login' do
    @user = User.new
    render 'user/log_in'
  end

  get :destroy, :map => '/logout' do 
    sign_out
    redirect '/'          
  end

  post :check_log_in do
    user = params[:user][:user]
    password = params[:user][:password]
    @user = User.authenticate(user, password)
    if (@user.nil?)
      @user = User.new
      flash.now[:error] = 'NOOOOOOOOOOOOOOO'
      render 'user/log_in'
    else
      @user = User.first(:user => user)
      session[:user] = @user
      redirect '/'          
    end
  end
end