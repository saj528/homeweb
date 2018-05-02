class Customer < ApplicationRecord
  include ActiveModel::Model
  attr_accessor :email, :description, :email
  validates :email, :description, :email, presence: true
end
