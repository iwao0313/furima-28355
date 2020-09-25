require 'rails_helper'

RSpec.describe PurchaseAddress, type: :model do
    before do
      @purchase_address = FactoryBot.build(:purchase_address)
    end

    describe '商品購入情報の保存' do
        context '商品購入情報の保存がうまくいくとき' do
      it 'すべての値が正しく入力されていれば保存できること' do
        expect(@purchase_address).to be_valid
      end
    end

    context '商品購入情報の保存がうまくいいかないとき' do
      it 'zip_codeが空だと保存できないこと' do
        @purchase_address.zip_code = nil
        @purchase_address.valid?
        expect(@purchase_address.errors.full_messages).to include("Zip code can't be blank")
      end

      it 'zip_codeにハイフンが無いと保存できないこと' do
        @purchase_address.zip_code = "1234567"
        @purchase_address.valid?
        expect(@purchase_address.errors.full_messages).to include("Zip code is invalid. Include hyphen(-)")
      end

      it "zip_codeが9文字だと登録できないこと" do
        @purchase_address.postal = "123-45670"
        @purchase_address.valid?
        expect(@purchase_address.errors.full_messages).to include("Postal is too long (maximum is 8 characters)", "Postal is invalid")
      end

      it 'provinceが空では保存できないこと' do
        @purchase_address.province = nil
        @purchase_address.valid?
        expect(@purchase_address.errors.full_messages).to include("Province can't be blank")
      end

      it 'provinceが1の時では保存できないこと' do
        @purchase_address.province = 1
        @purchase_address.valid?
        expect(@purchase_address.errors.full_messages).to include("Province must be other than 1")
      end

      it 'municipalitiesが空では保存できないこと' do
        @purchase_address.municipalities = nil
        @purchase_address.valid?
        expect(@purchase_address.errors.full_messages).to include("Municipalities can't be blank")
      end

      it 'street_numberが空だと保存できないこと' do
        @purchase_address.street_number = nil
        @purchase_address.valid?
        expect(@purchase_address.errors.full_messages).to include("Street number can't be blank")
      end

      it 'telephone_numberが空だと保存できないこと' do
        @purchase_address.telephone_number = nil
        @purchase_address.valid?
        expect(@purchase_address.errors.full_messages).to include("Telephone number can't be blank")
      end

      it 'telephone_numberが12桁以上だと保存できないこと' do
        @purchase_address.telephone_number = "090111111111"
        @purchase_address.valid?
        expect(@purchase_address.errors.full_messages).to include("Telephone number is invalid")
      end

      it "カードトークンが存在しない場合、購入ができない" do
        @purchase_address.token = nil
        @purchase_address.valid?
        expect(@purchase_address.errors.full_messages).to include("Token can't be blank")
      end
    end
  end
end