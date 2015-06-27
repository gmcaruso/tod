migration 3, :create_events do
  up do
    create_table :events do
      column :id, Integer, :serial => true
      column :name, DataMapper::Property::String, :length => 255
      column :amount_of_people, DataMapper::Property::Integer
      column :audience_level, DataMapper::Property::String, :length => 255
      column :max_amount_of_people, DataMapper::Property::Integer
      column :user_id, DataMapper::Property::Ingeger
    end
  end

  down do
    drop_table :events
  end
end
