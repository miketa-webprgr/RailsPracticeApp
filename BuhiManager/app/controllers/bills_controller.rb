class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def show
    @bills = Bill.all
    @bill = Bill.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
