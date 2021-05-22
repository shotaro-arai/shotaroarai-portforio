require 'rails_helper'

RSpec.describe Email, type: :model do
  before do 
    @email = FactoryBot.build(:email)
  end

  describe 'emailが送信できる時' do
    it '全ての値を正しく入力していればメールは送信できる' do
      expect(@email).to be_valid
    end
  end

  describe 'emailが送信できない時' do
    it 'nameが入力されていない場合はメールは送信できない' do
      @email.name = ''
      @email.valid?
      expect(@email.errors.full_messages).to include("お名前を入力してください")
    end

    it 'emailが入力されていない場合はメールは送信できない' do
      @email.email = ''
      @email.valid?
      expect(@email.errors.full_messages).to include("メールアドレスを入力してください")
    end

    it 'emailに全角が含まれるの場合はメールは送信できない' do
      @email.email = 'あいうえお@mail.com'
      @email.valid?
      expect(@email.errors.full_messages).to include("メールアドレスが間違っています")
    end

    it 'emailに@が含まれないの場合はメールは送信できない' do
      @email.email = 'abc.mail.com'
      @email.valid?
      expect(@email.errors.full_messages).to include("メールアドレスが間違っています")
    end

    it 'emailのドメインに.が含まれない場合はメールは送信できない' do
      @email.email = 'abc@mail'
      @email.valid?
      expect(@email.errors.full_messages).to include("メールアドレスが間違っています")
    end

    it 'titleが入力されていない場合はメールは送信できない' do
      @email.title = ''
      @email.valid?
      expect(@email.errors.full_messages).to include("件名を入力してください")
    end

    it 'textが入力されていない場合はメールは送信できない' do
      @email.text = ''
      @email.valid?
      expect(@email.errors.full_messages).to include("本文を入力してください")
    end
  end
end
