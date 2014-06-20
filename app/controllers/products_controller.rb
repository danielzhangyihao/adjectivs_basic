class ProductsController < ApplicationController
	def index
		vig_link_product_repository = VigLinkProductRepository.new
		@products = vig_link_product_repository.all
	end
end