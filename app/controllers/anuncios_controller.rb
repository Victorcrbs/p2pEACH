class AnunciosController < ApplicationController
    def new
    end
    
    def create
        @anuncio = Anuncio.new(anuncio_params)
 
        @anuncio.save
        redirect_to @anuncio
    end

    def show
        @anuncio = Anuncio.find(params[:id])
    end


        def anuncio_params
            params.require(:anuncio).permit(:item, :descrição, :horário, :tags)
        end
    
    def index
    @anuncios = Anuncio.all
    end
 
end
