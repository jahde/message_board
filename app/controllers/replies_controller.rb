class RepliesController < ApplicationController
    def index
      @article = Article.find(params[:article_id])
      @replies = @article.replies
    end

    def new
      @article = Article.find(params[:article_id])
      @reply = Reply.new
    end

    def create
      @article = Article.find(params[:article_id])
      @reply = @article.replies.build(reply_params)

      if @reply.save
        redirect_to @article
      else
        render 'new'
      end
    end

    def show
      @reply = Reply.find(params[:id])
    end

    def edit
      @reply = Reply.find(params[:id])
    end

    def update
      @reply = Reply.find(params[:id])

      if @reply.update(reply_params)
        redirect_to @reply
      else
        render 'edit'
      end
    end

    def destroy
      @reply = Reply.find(params[:id])
      @reply.destroy

      redirect_to replies_path
    end

    private
      def reply_params
        params.require(:reply).permit(:text, :article_id)
      end
  end
