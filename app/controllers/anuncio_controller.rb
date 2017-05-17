class AnuncioController < ApplicationController
    
     def index
        @anuncio = Anuncio.all
     end
    
    def show
        @anuncio = Anuncio.find(params[:id])
    end
    
    def new
      @anuncio = Anuncio.new
    end
    
    def edit
      @anuncio = Anuncio.find(params[:id])
    end
    
    def create
       @anuncio = Anuncio.new(anuncio_params)
       if @anuncio.save
          redirect_to @anuncio
       else
          render 'new'
       end
    end
    
    def update
       @anuncio = Anuncio.find(params[:id])
       if @anuncio.update_attributes(anuncio_params)
         flash[:success] = "Anúncio atualizado"
         redirect_to @anuncio
       else
          render 'edit'
       end
    end
    
    def destroy
      
       Anuncio.find(params[:id]).destroy
      flash[:success] = "Anúncio deletado"
      redirect_to anuncio_index_path
    
    end
    
    
    private
    
        def anuncio_params
            params.require(:anuncio).permit(:titulo, :descricao, :depoimentoDONO, :imovel_id, :image)
        end
    
end
