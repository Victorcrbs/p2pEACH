require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the CommmentsHelper. For example:
#
# describe CommmentsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe CommentsHelper, type: :helper do
  module CommentSpecHelper
  def valid_comment_attributes
    { :name => "Maria - GPP",
      :body => "Me empresta a calculadora ali no bandeco?",
      }
  end
end

describe Comment do
  include CommentSpecHelper

end
end
