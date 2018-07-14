class CustomersController < ApplicationController
  before_action :set_playlist_content, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_business!
  respond_to :html

  def index
    @customers = Customer.all
    respond_with(@customer)
  end

  def new
    @customer = Customer.new
    respond_with(@customer)
  end

  def edit
  end

  def create
    @customer = Customer.new(customer_params)
    respond_to do |format|
      if @customer.save
        format.html { redirect_to customers_path, notice: 'Customer was successfully created.' }
      else
        format.html { render action: 'new', notice: "Customer can't be save,  please contact Administratior"  }
      end
    end
  end

  def update
    @customer.update(customer_params)
    respond_with(@customer)
  end

  def destroy
    @customer.destroy
    respond_with(@customer)
  end

  private
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:id, :name, :phone_number, :email)
    end
end
