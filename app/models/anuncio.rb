class Anuncio < ApplicationRecord
   has_attached_file :image,
                  url: "/system/:hash.:extension",
                  hash_secret: "abc123"
    validates_attachment :image, presence: true,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
                     size: { in: 0..500.kilobytes }
   
   belongs_to :imovel
end
