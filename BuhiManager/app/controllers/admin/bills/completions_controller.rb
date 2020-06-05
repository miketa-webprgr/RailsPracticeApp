class Admin::Bills::CompletionsController < ApplicationController
  def update
    @bill = Bill.find(params[:bill_id])

    if @bill.update(bill_params)
      redirect_to admin_bills_path, notice: "返金が完了したので、#{@bill.name}さんの申請「#{@bill.item}（#{@bill.price}円）」を精算済にしました。"
    end

  end

  def destroy
    @bill = Bill.find(params[:bill_id])

    if @bill.update(bill_params)
      redirect_to admin_bills_path, notice: "#{@bill.name}さんの申請「#{@bill.item}（#{@bill.price}円）」を未精算に戻しました。"
    end
  end

  def bill_params
    params.require(:bill).permit(:status, :name, :paid_on, :item, :description, :price, :completed_on)
  end

end
