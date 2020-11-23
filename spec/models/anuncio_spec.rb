require 'rails_helper'
require 'spec_helper'

RSpec.describe Anuncio, type: :model do
  it 'invalido sem dono' do
    anuncio = Anuncio.new
    anuncio.item = "Teste"
    anuncio.horário = "10h-14h"
    anuncio.descrição = "Esse é um teste"
    anuncio.tags = "teste"
    anuncio.save
    expect(anuncio).not_to be_valid
  end
end
