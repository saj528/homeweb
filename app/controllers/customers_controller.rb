class CustomersController < ApplicationController
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new message_params

    if @customer.valid?
      MessageMailer.contact_me(@customer).deliver_now
      redirect_to new_customer_url, notice: "Customer info received, thanks!"
    else
      render :new
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end
  def index
    @customers = Customer.all
  end

  private

  def message_params
    params.require(:customer).permit(:email, :description, :quote)
  end  
end

