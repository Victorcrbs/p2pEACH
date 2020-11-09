require 'rails_helper'

RSpec.describe "sessions/destroy.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"
  it "deleta um anuncio" do
    @anuncio = Anuncio.find(params[:id])
   expect {
   delete :destroy, id: anuncio.id
   }.to change(Anuncio, :count).by(1)
   end
end
