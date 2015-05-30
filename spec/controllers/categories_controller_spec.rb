require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  describe "#index" do

      before do
        get :index
      end

      it {should respond_with(200)}
      it {should render_template(:index)}

      it "should assign @categories to all Categories in DB" do
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
  end

end #End of top
