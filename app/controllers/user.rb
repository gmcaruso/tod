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

      redirect '/'
  end

end