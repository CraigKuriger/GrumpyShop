require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  describe "#index" do

      before do
        get :index
      end

      it {should respond_with(200)}
      it {should render_template(:index)}

      it "should assign @categories to all categories in DB" do
      expect(assigns(:categories)).to eq(Category.all)
    end

  end

  describe "#show" do
    before do
      @category = create(:category)
      get :show, id: @category.id
    end

    it {should respond_with(200)}
    it {should render_template(:show)}
    it "should assign category with specified id to @category" do
        expect(assigns(:category)).to eq(@category)
    end

  end

end #End of top
