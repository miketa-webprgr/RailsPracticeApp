class Admin::BillsController < ApplicationController
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
    @bill = Bill.new(bill_params)
    
    if @bill.save
      # Railsの規約から外れた設計となっているため、ゴリ押し。。。
      redirect_to admin_bill_path(@bill.id), notice: "#{@bill.name}さんに代わって、#{@bill.item}（#{@bill.price}円）の精算申請を提出しました。"
    else
      render :new
    end

  end

  def update
    @bill = Bill.find(params[:id])
    
    if @bill.update(bill_params)
      redirect_to admin_bill_path, notice: "#{@bill.name}さんに代わって、#{@bill.item}（#{@bill.price}円）の精算申請を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @bill = Bill.find(params[:id])
    
    if @bill.destroy
      redirect_to admin_bills_path, notice: "#{@bill.name}さんに代わって、#{@bill.item}（#{@bill.price}円）の精算申請を削除しました。"
    else
      render :edit
    end
  end

  private

  def bill_params
    params.require(:bill).permit(:status, :name, :paid_on, :item, :description, :price, :completed_on)
  end

end
