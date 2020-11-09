class AnunciosController < ApplicationController    
    def index
        @anuncios = Anuncio.all
    end
    
    def show
        @anuncio = Anuncio.find(params[:id])
    end
    
    def new
    end
    
    def edit
        @anuncio = Anuncio.find(params[:id])
    end
    
    def create
        @anuncio = Anuncio.new(anuncio_params)
 
        @anuncio.save
        redirect_to @anuncio
    end
    
    def update
        @anuncio = Anuncio.find(params[:id])
        if @anuncio.update(params[:anuncio].permit(:item, :descrição, :horário, :tags))
            redirect_to @anuncio
        else
            render 'edit'
        end
    end
    
    def destroy
        @anuncio = Anuncio.find(params[:id])
        
        @anuncio.destroy
        redirect_to anuncios_path
    end
    
private
        def anuncio_params
            params.require(:anuncio).permit(:item, :descrição, :horário, :tags)
        end

        def search  
            if params[:search].blank?  
                redirect_to(root_path, alert: "Empty field!") and return  
              else  
              @parameter = params[:search].downcase  
              @results = Anuncio.all.where("lower(item) LIKE :search", search: "#{@parameter}%")
              @tags= Anuncio.all.where("lower(tags) LIKE :search", search: "#{@parameter}%")  
           
          end
        end
 
end
