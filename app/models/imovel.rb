class Imovel < ApplicationRecord
    has_many :anuncios, dependent: :destroy
    
end
