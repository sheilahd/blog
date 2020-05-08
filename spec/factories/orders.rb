FactoryBot.define do
  factory :order do
    product_name { "MyString" }
    product_count { 1 }
    customer_id {FactoryBot.create(:customer).id}
  
  end
end
