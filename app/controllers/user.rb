require 'iconv'

Tod::App.controllers :user do

  get :new do
    @user = User.new
    render '/user/new'
  end

  # post :create do
  #     password_confirmation = params[:user][:password_confirmation]
  #     params[:user].reject!{|k,v| k == 'password_confirmation'}
  #     if (params[:user][:password] == password_confirmation)
  #       @user = User.new(params[:user])
  #       if @user.save
  #         flash[:success] = 'User created'
  #         redirect '/'
  #       else
  #         flash.now[:error] = 'All fields are mandatory'
  #         render 'users/new'
  #       end
  #     else
  #       @user = User.new (params[:user])
  #       flash.now[:error] = 'Passwords do not match'
  #       render 'users/new'          
  #     end
  # end

end