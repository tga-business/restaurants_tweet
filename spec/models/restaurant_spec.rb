require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  before do
    @restaurant = FactoryBot.build(:restaurant)
  end

  describe '投稿内容の保存' do
    context '店舗を投稿できる場合' do
      it '画像、店舗名、最寄駅、開店時間、閉店時間、アピールポイント、定休日、喫煙室の有無、以上の情報全てをしていれば投稿できる'do
        expect(@restaurant).to be_valid
      end


    end

    context '店舗を投稿出来ない場合' do
      it '店舗名が空の場合投稿出来ない' do
        @restaurant.name =nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Name can't be blank")
      end

      it '画像が空の場合投稿出来ない' do
        @restaurant.image =nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Image can't be blank")
      end

      it 'アピールポイントが空の場合投稿出来ない' do
        @restaurant.appeal =nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Appeal can't be blank")
      end

      it '最寄駅が空の場合投稿出来ない' do
        @restaurant.near_station =nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Near_station can't be blank")
      end

      it '喫煙席の有無が空の場合投稿出来ない' do
        @restaurant.smoking =nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Smoking can't be blank")
      end

      it '喫煙席の有無が空の場合投稿出来ない' do
        @restaurant.smoking =nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Smoking can't be blank")
      end

      it '定休日の有無が空の場合投稿出来ない' do
        @restaurant.holiday =nil
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Holiday can't be blank")
      end

      it '開店時間のの選択肢について、--を指定していると出品できない' do
        @restaurant. =opening_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include("Opening must be other than 1")
      end
      
      it '閉店時間のの選択肢について、--を指定していると出品できない' do
        @restaurant. =closing_id = 1
        @restaurant.valid?
        expect(@restaurant.errors.full_messages).to include(" Closing must be other than 1")
      end
      
    end

  end
end
