require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the AnunciosHelper. For example:
#
# describe AnunciosHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe AnunciosHelper, type: :helper do
  module AnuncioSpecHelper
    def valid_anuncio_attributes
      { :item => "caneca do Dasi",
      :descrição => "Pode ir no panelas mas devolve, ok.",
      :horário => "18-22h",
      :tags => "caneca",
      }
  end
end

describe Anuncio do
  include AnuncioSpecHelper

end
      
end
