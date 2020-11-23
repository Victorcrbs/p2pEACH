require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:each) do 
    @anuncio = Anuncio.new

    @anuncio.item = "lápis e borracha"
    @anuncio.descrição = " "
    @anuncio.horário = "8-14h"
    @anuncio.tags = " "
    @anuncio.save

  
  end

  it 'comentário comum' do
    comment = Comment.new
    comment.name = "Jonatas - SI noturno"
    comment.body = "me empresta por volta de 15h?"
  
    expect(comment.name).to eq 'Jonatas - SI noturno'
    expect(comment.body).to eq 'me empresta por volta de 15h?'
  end


end
