require 'spec_helper'

describe 'viewing products' do
	before do
		blue_sweater = Product.new(name: 'Blue sweater')
		vig_link_product_repository = double(all: [blue_sweater])
		VigLinkProductRepository.stub(:new).and_return(vig_link_product_repository)
	end

	it 'renders the first product returned by the repository' do
		visit '/'
		expect(page).should have_content 'Blue sweater'
	end
end