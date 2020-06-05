module ApplicationHelper
  def status_on_view(bill)
    if bill.status == false
      "未精算"
    else
      "精算済"
    end
  end
end
