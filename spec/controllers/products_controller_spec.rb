require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "#index" do

    context "when the current user is an admin" do
      # test that it redirects to the expected place
    end

    context "when the current user is an admin" do

      before do
        admin = FactoryGirl.create(:admin)
        sign_in admin
        get :index
      end

      it {should respond_with(200)}

      it {should render_template(:index)}

      it "should assign @products to all products in DB when an admin is logged in" do
        expect(assigns(:products)).to eq(Product.all)
      end

    end

  end

  describe "#show" do

      before do
        @product = create(:product)
        get :show, id: @product.id
      end

      it {should respond_with(200)}
        it "should assign product with a specified id to @product" do
        expect(assigns(:product)).to eq(@product)
      end


  end

end #End of start
