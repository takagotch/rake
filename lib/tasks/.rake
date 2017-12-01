desc "List all products"
task product_list: environment do
  Product.all.each do |product|
    puts "#{product.number}\t#{product.name}"
  end
end

