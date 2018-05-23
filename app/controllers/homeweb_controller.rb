class HomewebController < ApplicationController
  def index
    @customer = Customer.new
  end
end
