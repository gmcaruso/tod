require 'rubygems'
require 'dm-core'
require 'dm-tags'

class Event
  include DataMapper::Resource

  # property <name>, <type>
  property :id,               Serial
  property :name,			  String
  property :amount_of_people, Integer, required: true
  property :audience_level,   String,    required: true
  property :max_amount_of_people, Integer
  property :user_id, Integer
end
