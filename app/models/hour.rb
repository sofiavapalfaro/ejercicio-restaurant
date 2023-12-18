class Hour < ApplicationRecord
  belongs_to :restaurant
  attribute :monday_closing, :time
  attribute :tuesday_closing, :time
  attribute :wednesday_closing, :time
  attribute :thursday_closing, :time
  attribute :friday_closing, :time
  attribute :saturday_closing, :time
  attribute :sunday_closing, :time
end
