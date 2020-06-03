require 'rails_helper'

describe 'Bill管理機能', type: :system do
  
  describe '一覧表示機能' do
    
    before do
      FactoryBot.create(:uncompleted_bill)
      FactoryBot.create(:completed_bill)
    end
    
    context 'index.html.slimにアクセス' do
      before do
        visit bills_path
      end

      it '未精算のbillsが「未精算」テーブルに表示される' do
        expect(find(".uncompleted")).to have_content '大会参加費'
      end

      it '未精算のbillsが「精算済」テーブルに表示されない' do
        expect(find(".completed")).not_to have_content '大会参加費'
      end

      it '精算済のbillが「精算済」テーブルに表示される' do
        expect(find(".completed")).to have_content 'サッカーボール'
      end
    
      it '精算済のbillsが「未精算」テーブルに表示されない' do
        expect(find(".uncompleted")).not_to have_content 'サッカーボール'
      end

    end

  end                 

end