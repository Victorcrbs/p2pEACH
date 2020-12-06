class CommentsController < ApplicationController
    def create
        @anuncio = Anuncio.find(params[:anuncio_id])
        @comment = @anuncio.comments.create(params[:comment].permit(:name, :body))
        redirect_to anuncio_path(@anuncio)
    end
    def new
        @anuncio = Anuncio.find(params[:anuncio_id])
        @comment = @anuncio.comments.new(parent_id: params[:parent_id])
      end
end
