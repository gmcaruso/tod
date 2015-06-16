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
      
      @user = User.new
      @user.password= password
      @user.user= user
      @user.role= role
      @user.save

      flash[:success] = t('user.new.result.success')

      redirect '/'
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
      sign_in @user
      redirect '/'          
    end
  end
end