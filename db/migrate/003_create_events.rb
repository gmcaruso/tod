migration 3, :create_events do
  up do
    create_table :events do
      column :id, Integer, :serial => true
      column :amount_of_people, DataMapper::Property::Integer
      column :audience_level, DataMapper::Property::String, :length => 255
      column :max_amount_of_people, DataMapper::Property::Integer
    end
  end

  down do
    drop_table :events
  end
end
