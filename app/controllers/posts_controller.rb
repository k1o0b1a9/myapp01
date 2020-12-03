class PostsController < ApplicationController
  require 'csv'
  before_action :baria_account, only: [:edit, :destroy, :update]
  def new
  end
  
  def create
    Post.create(title: params[:string], content: params[:text],account_id:current_account.id)
  end
  
  def edit
    @post=Post.find_by(id: params[:id])
  end
  
  def update
    @post=Post.find_by(id: params[:id])
    @post.title=params[:title]
    @post.content=params[:content]
    @post.save
    redirect_to(root_path)
  end
  
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy #destroyメソッドを使用し対象のツイートを削除する。
    redirect_to(root_path)
  end
  
  def index
    @posts = Post.all
    # respond_to はリクエストに応じた処理を行うメソッドです。
    # 通常時はhtmlをリクエストしているので、処理は記述していません。
    # viewのlink_toでformatをcsvとして指定しているので、
    # リンクを押すとsend_posts_csv(@posts)の処理を行います。
    respond_to do |format|
      format.html
      format.csv do |csv|
        send_posts_csv(@posts)
      end
    end    
  end
  
  private
  #ログインしているユーザーが投稿したポストのみ編集可能
   def baria_account
    unless Post.find(params[:id]).account.id.to_i == current_account.id
      #投稿者とidが一致しなくても管理者である場合編集可能
      unless current_account.admin?
        redirect_to root_path(current_account)
      end
    end
   end
   #CSV形式で出力 
    def send_posts_csv(posts)
      bom = "\uFEFF"
      # CSV.generateとは、対象データを自動的にCSV形式に変換してくれるCSVライブラリの一種
      csv_data = CSV.generate(bom) do |csv|
        # %w()は、空白で区切って配列を返します
        column_names = %w(投稿者名 タイトル 内容 作成日)
        # csv << column_namesは表の列に入る名前を定義します。
        csv << column_names
        # column_valuesに代入するカラム値を定義します。
        posts.each do |post|
          column_values = [
            post.account.accountname,
            post.title,
            post.content,
            post.updated_at.to_s(:datetime_jp)
          ] 
          # csv << column_valueshは表の行に入る値を定義します。
          csv << column_values
        end
      end
      # csv出力のファイル名を定義します。
      send_data(csv_data, filename: "投稿一覧.csv")
    end
end
