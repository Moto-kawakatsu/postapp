require 'rails_helper'
RSpec.describe User do
  before do
    @post = FactoryBot.build(:post)
    @post.image = fixture_file_upload('app/assets/images/glass.png')
  end

  describe '新規投稿' do
    context '新規投稿がうまくいくとき' do
      it "image, title, textが存在すれば登録できる" do
        expect(@post).to be_valid
      end
    end

      context '新規投稿がうまくいかないとき' do
        it "imageが空だと登録できない" do
          @post.image = nil
          @post.valid?
          expect(@post.errors.full_messages).to include("Imageを入力してください")
        end

        it "titleが空だと登録できない" do
          @post.title = ""
          @post.valid?
          expect(@post.errors.full_messages).to include("Titleを入力してください")
        end

        it "titleが２０文字以上だと登録できない" do
          @post.title = "あああああああああああああああああああああああああ"
          @post.valid?
          expect(@post.errors.full_messages).to include("Titleは20文字以内で入力してください")
        end

        it "textが空だと登録できない" do
          @post.text = ""
          @post.valid?
          expect(@post.errors.full_messages).to include("Textは1文字以上で入力してください")
        end
        
        it "textが１４０文字以上だと登録できない" do
          @post.text = "ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ"
          @post.valid?
          expect(@post.errors.full_messages).to include("Textは140文字以内で入力してください")
        end

        end
    end
  end
