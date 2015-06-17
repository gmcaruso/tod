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
    max_amount_of_people= params[:event][:max_amount_of_people]
       
    if (audience_level == "Inicial" || audience_level == "Practicante" || audience_level == "Avanzado")
      if (amount_of_people.to_i >= 1 && amount_of_people.to_i <= max_amount_of_people.to_i) 
        if(max_amount_of_people.to_i <= 10000)
          @event= Event.new
          @event.amount_of_people= amount_of_people
          @event.audience_level= audience_level
          @event.max_amount_of_people= max_amount_of_people
      
          if @event.save
            flash[:success] = t('event.new.result.success')
            redirect 'event/list'
          end
        else
          flash[:danger] = t('event.detail.error.max_amount_of_people')
          redirect 'event/new'
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

  get :modify_event, :with =>:event_id  do
    @event = Event.get(params[:event_id])
    render 'event/edit'
  end

  post :update, :with => :event_id do
    amount_of_people= params[:event][:amount_of_people]
    audience_level= params[:event][:audience_level]
    max_amount_of_people = params[:event][:max_amount_of_people]
    if (audience_level == "Inicial" || audience_level == "Practicante" || audience_level == "Avanzado") #No hardcodear los valores maximos y minimos
      if (amount_of_people.to_i >= 1 && amount_of_people.to_i <= max_amount_of_people.to_i)
        if( max_amount_of_people.to_i <= 10000) 
          flash[:success] = t('event.new.edit.success')
        else
        flash[:danger] = t('event.detail.error.max_amount_of_people') 
        redirect 'event/list'
        end
      else
        flash[:danger] = t('event.detail.error.amount_of_people')
        redirect 'event/list'
      end
    else
      flash[:danger] = t('event.detail.error.audience_level')
      redirect 'event/list'
    end
 
    @event = Event.get(params[:event_id])
    @event.update(params[:event])
    @event.save
    redirect 'event/list'
  end

  
end
