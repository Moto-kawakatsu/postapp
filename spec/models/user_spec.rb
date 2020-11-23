require 'rails_helper'
RSpec.describe User do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      it "nickname, email, password, password_confirmationが存在すれば登録できる" do
        expect(@user).to be_valid
      end

      it "passwordが6文字以上で半角英数字混合であれば登録できる" do
        @user.password = "aaaa111"
        @user.password_confirmation = "aaaa111"
        expect(@user).to be_valid
      end

      it "emailに@が入っていれば登録できる" do
        @user.email = "aa@aaa"
        expect(@user).to be_valid
      end
    end


      context '新規登録がうまくいかないとき' do
        it "nicknameが空だと登録できない" do
          @user.nickname = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("ニックネームが入力されていません。")
        end

        it "emailが空だと登録できない" do
          @user.email = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("メールアドレスが入力されていません。")
        end

        it "emailが重複していると登録できない" do
          @user.save
          another_user = FactoryBot.build(:user)
          another_user.email = @user.email
          another_user.valid?
          expect(another_user.errors.full_messages).to include("メールアドレスは既に使用されています。")
        end

        it "emailに@がないと登録できない" do
          @user.email = "aaaaaa.aaaaa"
          @user.valid?
          expect(@user.errors.full_messages).to include("メールアドレスは有効でありません。")
        end

        it "passwordが空だと登録できない" do
          @user.password = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードは有効でありません。")
        end

        it "password_confirmationが空だと登録できない" do
          @user.password_confirmation = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("確認用パスワードとパスワードの入力が一致しません")
        end

        it "password_confirmationがpasswordと同じでないと登録できない" do
          @user.password = "aaaa111"
          @user.password_confirmation = "bbbb111"
          @user.valid?
          expect(@user.errors.full_messages).to include("確認用パスワードとパスワードの入力が一致しません")
        end

        it "passwordが５文字以下だと登録できない" do
          @user.password = "aa000"
          @user.password_confirmation = "aa000"
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードは6文字以上に設定して下さい。")
        end

        it "passwordは半角数字のみでは登録できない" do
          @user.password = "1111111"
          @user.password_confirmation = "1111111"
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードは有効でありません。")
        end

        it "passwordは半角英字のみでは登録できない" do
          @user.password = "aaaaaaa"
          @user.password_confirmation = "aaaaaaa"
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードは有効でありません。")
        end

        end
    end
  end
