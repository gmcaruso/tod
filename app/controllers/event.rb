require 'iconv'

Tod::App.controllers :event do

  get :new do
    @event = Event.new
    render 'event/new'
  end

  post :create do
    amount_of_people= params[:event][:amount_of_people]
    audience_level= params[:event][:audience_level]

    if (audience_level == "Inicial" || audience_level == "Practicante" || audience_level == "Avanzado")
      if (amount_of_people.to_i >= 1 && amount_of_people.to_i <= 10000) #No hardcodear los valores maximos y minimos
        @event= Event.new
        @event.amount_of_people= amount_of_people
        @event.audience_level= audience_level

        if @event.save
          flash[:success] = t('event.new.result.success')
          redirect 'event/list'
        end

      else
        flash[:danger] = t('event.detail.error.amount_of_people')
        redirect 'event/new'
      end
    else
      flash[:danger] = t('event.detail.error.audience_level')
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

  get :modify_event do
    render 'event/modify'
  end

  post :save_changes do
    amount_of_people= params[:event][:amount_of_people]
    audience_level= params[:event][:audience_level]
    @event= Event.getId(:event_id)
    @event.amount_of_people= amount_of_people
    @event.audience_level= audience_level
      redirect 'event/list'
  end




end
