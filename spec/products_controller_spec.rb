require 'spec_helper'

describe ProductsController, type: :controller do 
	describe 'GET #index' do
		let(:blue_sweater) { Product.new(name: 'blue_sweater') }
		let(:vig_link_product_repository) { double(all: [blue_sweater]) }
		
		before do
			VigLinkProductRepository.stub(:new).and_return(vig_link_product_repository)
		end

		it 'assigns the products returned by the VigLinkProductRepository' do
			get :index
			expect(assigns(:products)).to eq([blue_sweater])
		end
	end
end