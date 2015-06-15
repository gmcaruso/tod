migration 4, :create_users do
  up do
    create_table :users do
      column :id, Integer, :serial => true
      column :user, DataMapper::Property::String, :length => 255
      column :password, DataMapper::Property::String, :length => 255
      column :role, DataMapper::Property::String, :length => 255
    end
  end

  down do
    drop_table :users
  end
end
