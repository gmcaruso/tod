require 'iconv'

Tod::App.controllers :user do

  get :new do
    @user = User.new
    render '/user/new'
  end

  post :create do
      password = params[:user][:password]
      role = params[:user][:role]
      name = params[:user][:name]
      email = params[:user][:email]
      
      if role == 'Usuario' || role == 'Administrador'
        @user = User.new
        @user.password= password
        @user.role= role
        @user.name= name
        @user.email= email
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
    name = params[:user][:name]
    password = params[:user][:password]
    if (User.authenticate(name, password))
      @name = User.first(:name => name)
      session[:user] = @name
      redirect '/'          
    else
      @user= User.new
      flash.now[:danger] = 'Usuario incorrecto'
      render 'user/log_in'
    end

  end

end