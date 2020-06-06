class BillsController < ApplicationController

  def index
    @bills_uncompleted = Bill.where(status: "false").order(paid_on: :asc)
    @bills_completed = Bill.where(status: "true").order(completed_on: :asc)
  end

  def show
    @bill = Bill.find(params[:id])
  end

  def new
    @bill = Bill.new
  end

  def edit
    @bill = Bill.find(params[:id])
    redirect_to @bill if @bill.status == true
  end

  def create
    @bill = Bill.new(bill_params)
    
    if @bill.save
      redirect_to @bill, notice: "#{@bill.item}（#{@bill.price}円）について、精算申請を提出しました。"
    else
      render :new
    end

  end

  def update
    @bill = Bill.find(params[:id])
    redirect_to @bill if @bill.status == true
    
    if @bill.update(bill_params)
      redirect_to @bill, notice: "#{@bill.item}（#{@bill.price}円）について、更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @bill = Bill.find(params[:id])
    redirect_to @bill if @bill.status == true
    
    if @bill.destroy
      redirect_to root_path, notice: "#{@bill.item}（#{@bill.price}円）を削除しました。"
    else
      render :edit
    end
  end

  private

  def bill_params
    params.require(:bill).permit(:status, :name, :paid_on, :item, :description, :price, :completed_on)
  end

end
