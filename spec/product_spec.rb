require 'spec_helper'

describe ProductsController do
    
	before :each do
		@product = Product.new(title: "Title", description: "Description", image_url: "Image Url", price: "Price")
	end

	describe "#new" do
		it "takes four parameters and returns a product" do
			@product.should be_an_instance_of Product
		end
	end

	describe "#title" do
		it "returns the correct title" do
			@product.title.should eql "Title"
		end

		it "title should not be empty" do
			@product.title.should_not be_empty
		end
	end

	describe "#description" do
		it "returns the correct description" do
			@product.description.should eql "Description"
		end

		it "description should be valid" do
			@product.description.should_not be_empty
		end
	end

	describe "#image_url" do
		it "returns the correct image_url" do
			@product.image_url.should eql "Image Url"
		end

		it "image url should not be empty" do
			@product.image_url.should_not be_empty
		end

		#it "matches the image format" do
		#	Product.new.image_url.should =~ /%r{\.(gif|jpg|png)$}i/
		#end
	end

	describe "#price" do
		it "returns the price in decimal format" do
			@product.price.should == 0.0
		end

		it "be in the range" do
			@product.price.should be_within(0.01).of(0.01)
		end

	end
end