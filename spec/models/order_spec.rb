require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { Order.new( product_name: "gears", product_count: 7, customer: FactoryBot.create(:customer))}
  it "is valid with valid attributes" do
      expect(subject).to be_valid
  end
  it "should have a customer" do
    order=Order.new(product_name: "guavas", product_count: 3)
    order.save
    expect(Order.count).to eq 0
  end
  it "should have a customer_id that belongs to an existing customer" do
    order=Order.new(customer_id: 77777)
    order.save
    expect(Order.count).to eq 0
  end


  it "is not valid without a product_name" do
    subject.product_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a product_count" do
    subject.product_count=nil
    expect(subject).to_not be_valid
  end

  it "is not valid if the product_count is not a number" do
    subject.product_count="a"
    expect(subject).to_not be_valid
  end

  it "is not valid if the product_count is not positive numbers" do
    subject.product_count = 0
    expect(subject).to_not be_valid
  end
end
