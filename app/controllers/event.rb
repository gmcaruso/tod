require 'iconv'

Tod::App.controllers :event do

  get :new do
    @event = Event.new
    render 'event/new'
  end

  get :edit, :with =>:event_id  do
    @event = Event.get(params[:event_id])
    render 'event/edit'
  end

  post :create do

    amount_of_people= params[:event][:amount_of_people]
    audience_level= params[:event][:audience_level]
    max_amount_of_people= 10000 # por default

    if (amount_of_people.to_i >= 1 && amount_of_people.to_i <= max_amount_of_people)

      @user = session[:user]
      @event= Event.new
      @event.name= session[:user].name
      @event.amount_of_people= amount_of_people
      @event.audience_level= audience_level
      @event.max_amount_of_people= max_amount_of_people

      @event.user_id= @user.id

      if @event.save
        flash[:success] = t('event.new.result.success')
        redirect 'event/list'
      end

      else
        flash[:danger] = t('event.detail.error.amount_of_people')
        redirect 'event/new'
    end
  end

  get :detail do
    event_id      = params[:event_id]
    @event_detail = Event.get event_id
    render 'event/detail'
  end

  get :list do
    @events = Event.reverse
    render 'event/list'
  end

  get :modify_event, :with =>:event_id  do
    @event = Event.get(params[:event_id])
    render 'event/edit'
  end

  post :update, :with => :event_id do
    @event = Event.get(params[:event_id])
    amount_of_people= params[:event][:amount_of_people]
    audience_level= params[:event][:audience_level]
    #max_amount_of_people= params[:event][:max_amount_of_people]


    if (amount_of_people.to_i >= 1 && amount_of_people.to_i <= @event.max_amount_of_people)

      flash[:success] = t('event.new.edit.success')
    else
      flash[:danger] = t('event.detail.error.amount_of_people')
      redirect 'event/list'
     end

    @event = Event.get(params[:event_id])
    @event.update(params[:event])
    @event.save
    redirect 'event/list'
  end

  get :modify_amount, :with => :event_id do
    @event = Event.get(params[:event_id])
    render 'event/edit_amount'
  end

  post :update_amount, :with => :event_id do
    @event = Event.get(params[:event_id])
    max_amount_of_people= params[:event][:max_amount_of_people]
    if max_amount_of_people.to_i >= 1 && @event.amount_of_people <= max_amount_of_people.to_i
      flash[:success] = 'Cupo Maximo modificado'
    else
      flash[:danger] = t('event.detail.error.max_amount_of_people')
      redirect 'event/list'
    end

    @event.update(params[:event])
    @event.save
    redirect 'event/list'
  end

  get :remove, :with => :event_id do
    @event = Event.get(params[:event_id])
    if @event.destroy!
      @event.destroy
      flash[:success] = t('event.detail.succes.delete')
      redirect 'event/list'
    end
  end

  get :modify_amount do
    render 'event/edit_amount'
  end

  post :change_max_amount do
    @max_amount = params[:max_amount_of_people]
    @events = Event.reverse
    @events.each do |event|
      event.max_amount_of_people = @max_amount
      event.save
    end
    redirect 'event/list'
  end
end
