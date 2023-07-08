class BillsController < ApplicationController
  before_action :set_bill, only: [:edit, :update, :destroy]

  def index
    @bills = Bill.all
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bill_params)
    if @bill.save
      redirect_to bills_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bill.update(bill_params)
      redirect_to bills_path
    else
      render :edit
    end
  end

  def destroy
    @bill.destroy
    redirect_to bills_path
  end

  private

  def set_bill
    @bill = Bill.find(params[:id])
  end

  def bill_params
    params.require(:bill).permit(:bill_type, :amount, :employee_id)
  end
end
