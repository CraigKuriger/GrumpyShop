require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "#show" do

      before do
        @product = create(:product)
        get :show, id: @product.id
      end

      it {should respond_with(200)}


  end

end #End of start
