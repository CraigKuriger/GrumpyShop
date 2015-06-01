require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "#index" do

    context "when the current user is an user" do
      before do
        user = FactoryGirl.create(:user)
        sign_in user
        get :index
      end
      it {should respond_with(403)}
    end

    context "when the current user is an admin" do

      before do
        admin = FactoryGirl.create(:admin)
        sign_in admin
        get :index
      end

      it {should respond_with(200)}
      it {should render_template(:index)}
      it "should assign @products to all products in DB" do
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

  describe "#new" do

    context "when the current user is an user" do
      before do
        user = FactoryGirl.create(:user)
        sign_in user
        get :new
      end
      it {should respond_with(403)}
    end

    context "when the current user is an admin" do

      before do
        admin = FactoryGirl.create(:admin)
        sign_in admin
        get :new
      end

      it {should respond_with(200)}
      it {should render_template(:new)}
      it "should assign an instance of Product to be a @product" do
        expect(assigns(:product)).to be_a(Product)
      end
    end
  end

  describe "#create" do
    # context "when the current user is an admin" do
      before do
        @product_params = attributes_for(:product)
        # admin = FactoryGirl.create(:admin)
        # sign_in admin
        post :create, { product: @product_params }
      end

      context "if valid params" do

        before do
          post :create, { product: @product_params }
        end

        it { should respond_with(302) }
        it "should redirect to the product index page" do
          product = Product.find_by(@product_params)
          expect(response).to redirect_to("/products")
        end
        it "creates a new product with specified params" do
          expect(Product.find_by(@valid_params)).to be_truthy
        end
      end
    # end
  end




end #End of start
