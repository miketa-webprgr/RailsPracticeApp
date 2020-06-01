class BillsController < ApplicationController

  def index
    @bills = Bill.all
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def new
    @bill = Bill.new
  end

  def edit
    @bill = Bill.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end

end
