class CommentsController < ApplicationController
    def create
        @anuncio = Anuncio.find(params[:anuncio_id])
        @comment = @anuncio.comments.create(params[:comment]).permit(:name, :comment))
        redirect_to anuncio_path(@anuncio)
    end
    def destroy
    end
end
