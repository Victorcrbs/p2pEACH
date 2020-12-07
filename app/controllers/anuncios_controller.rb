class AnunciosController < ApplicationController 
    helper_method :sort_column, :sort_direction       
    def index
        @anuncios = Anuncio.all
        @anuncios = Anuncio.order(sort_column + " " + sort_direction)
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
        @anuncio.usuario_id = current_user.id
        @anuncio.save
        redirect_to @anuncio
    end
    
    def update
        @anuncio = Anuncio.find(params[:id])

        if @anuncio.update(params[:anuncio].permit(:item, :descrição, :horário, :tags, :tipo))
            if params[:anuncio][:imagens].present?
                params[:anuncio][:imagens].each do |imagem|
                    @anuncio.imagens.attach(imagem)
                end
            end
            redirect_to @anuncio
        else
            render 'edit'
        end
    end

    def delete_image_attachment
        @imagem = ActiveStorage::Attachment.find(params[:id])
        @imagem.purge
        redirect_back(fallback_location: anuncios_path)
    end
    
    def destroy
        @anuncio = Anuncio.find(params[:id])
        
        @anuncio.destroy
        redirect_to anuncios_path
    end
    
    

    def anuncio_params
            params.require(:anuncio).permit(:item, :descrição, :horário, :tags, :tipo, imagens: [])
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

        def emprestimos
            @anuncios = Anuncio.all
            @anuncios_de_emprestimo = []
            @anuncios.each do |anuncio|
                @anuncios_de_emprestimo << anuncio if anuncio.tipo == 'emprestimo'
            end
        end

        def solicitacoes
            @anuncios = Anuncio.all
            @anuncios_de_solicitacao = []
            @anuncios.each do |anuncio|
                @anuncios_de_solicitacao << anuncio if anuncio.tipo == 'solicitacao'
                end
            end
        end
 
    private

    def sort_column
        Anuncio.column_names.include?(params[:sort]) ? params[:sort] : "item"
    end
      
    def sort_direction
        %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
