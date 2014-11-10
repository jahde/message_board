class RepliesController < ApplicationController
    def new
      @reply = Reply.new
    end

    def create
      @reply = Reply.new(reply_params)

      if @reply.save
        redirect_to @reply
      else
        render 'new'
      end
    end

    def show
      @reply = Reply.find(params[:id])
    end

    def index
      @replys = Reply.all
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
        params.require(:reply).permit(:title, :text)
      end
  end
