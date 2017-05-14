class ImovelController < ApplicationController
   
    def index
        @imovel = Imovel.all
    end
    
    def show
        @imovel = Imovel.find(params[:id])
    end
    
    def new
      @imovel = Imovel.new
    end
    
    def edit
      @imovel = Imovel.find(params[:id])
    end
    
    def create
       @imovel = Imovel.new(imovel_params)
       if @imovel.save
          redirect_to @imovel
       else
          render 'new'
       end
    end
    
    def update
       @imovel = Imovel.find(params[:id])
       if @imovel.update_attributes(imovel_params)
         flash[:success] = "Imovel atualizado"
         redirect_to @imovel
       else
          render 'edit'
       end
    end
    
    def destroy
      
       Imovel.find(params[:id]).destroy
      flash[:success] = "Imóvel deletado"
      redirect_to imovel_index_path
    
    end
    
    
    private
    
        def imovel_params
            params.require(:imovel).permit(:codigo, :tipo, :valor, :valorIPTU, :valorCondominio, :numQUARTOS, :numSUITES, :numBANHEIROS, :numVAGAS, :areaTOTAL, :extras)
        end
    
    
end
