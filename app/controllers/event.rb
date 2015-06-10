require 'iconv'

Tod::App.controllers :event do
  register Padrino::Rendering
      register Padrino::Helpers

      enable :sessions

  get :new do
    @event = Event.new
    render 'event/new'
  end

  post :create do
    @audiencia = session[:audiencia]
    @cupo = session[:cupo]
    amount_of_people= params[:event][:amount_of_people]
    audience_level= params[:event][:audience_level]

    if (audience_level == "Inicial" || audience_level == "Practicante" || audience_level == "Avanzado")
      if (amount_of_people.to_i >= 1 && amount_of_people.to_i <= 10000) #No hardcodear los valores maximos y minimos
        @event= Event.new
        @event.amount_of_people= amount_of_people
        @event.audience_level= audience_level

        if @event.save
          session[:audiencia] = ('event.new.result.success')
          redirect 'event/list'
        end

      else
        session[:cupo] = t('event.detail.error.amount_of_people')
        redirect 'event/list'
      end
    else
      session[:audiencia] = t('event.detail.error.audience_level')
      redirect 'event/list'
    end
  end

  get :detail do
    event_id      = params[:event_id]
    @event_detail = Event.get event_id
    render 'event/detail'
  end

  get :list do
    #session[:audiencia] = nil
    @events = Event.reverse
    render 'event/list'
  end

  get :modify_event, :with =>:event_id  do
    session[:audiencia] = nil
    session[:cupo] = nil
    @event = Event.get(params[:event_id])
    render 'event/edit'
  end

  post :update, :with => :event_id do
    @audiencia = session[:audiencia]
    @cupo = session[:cupo]
    amount_of_people= params[:event][:amount_of_people]
    audience_level= params[:event][:audience_level]
    if (audience_level == "Inicial" || audience_level == "Practicante" || audience_level == "Avanzado")
      @audiencia = t('event.detail.succes.audience_level')
      session[:audiencia] = @audiencia
    else
      @audiencia = t('event.detail.error.audience_level')
      session[:audiencia] = @audiencia
      redirect 'event/list'
    end
    if (amount_of_people.to_i >= 1 && amount_of_people.to_i <= 10000) #No hardcodear los valores maximos y minimos
      @cupo = t('event.detail.succes.event')
      session[:cupo] = @cupo
    elsif (amount_of_people.to_i.to_s != amount_of_people)
      @cupo = t('event.detail.error.amount_of_people_type')
      session[:cupo] = @cupo
      redirect 'event/list'
    else
      @cupo = t('event.detail.error.amount_of_people')
      session[:cupo] = @cupo
      redirect 'event/list'
    end
    @event = Event.get(params[:event_id])
    @event.update(params[:event])
    @event.save
    redirect 'event/list'
  end


end
