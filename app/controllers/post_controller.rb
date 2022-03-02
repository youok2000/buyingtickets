class PostController < ApplicationController
  def new

  end

  def  create
    @post = Post.create(
      title: params[:title],
      contents: params[:contents]
    )

    if @post.save
      flash[:success] = "ホーム画面に投稿しました"
      redirect_to("/host_form")
    else
      flash[:false] = "もう一度入力してください"
      render('post/new')
    end

  end

  def show
    @post = Post.find_by(
      id: params[:id]
    )
  end

end
