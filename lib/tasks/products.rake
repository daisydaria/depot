desc "Генерация 100 продуктов"
namespace :products do
  task :create => :environment do
    100.times do |i|
      p = Product.new(name: "Товар #{i+1}", price: rand(1.0e6)/1000+1, weight: rand(3000)+1)
      p.description= "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec congue, felis at tempor feugiat, risus magna condimentum mauris, a varius neque tortor ac justo. Aliquam non dignissim velit. Sed venenatis eros rutrum pretium sagittis. Mauris gravida molestie neque, nec elementum arcu porta a. Fusce ac rutrum lectus, et porttitor lacus. Donec ullamcorper nunc lectus, vitae scelerisque velit malesuada et. Aenean malesuada nisi eget leo accumsan convallis. Aenean congue elit mi, et fringilla leo interdum quis. Cras lacinia sit amet quam eu malesuada. Duis vitae augue tincidunt, dignissim odio ut, rutrum metus. Vestibulum rhoncus, erat nec hendrerit vestibulum, nunc neque ullamcorper nisl, et ullamcorper tortor lacus ut odio. Donec tincidunt nisl sed accumsan ultricies. Donec id ultricies mauris. Maecenas in maximus est. Praesent non massa sapien. Etiam convallis bibendum vulputate. "
      p.save!
    end
  end
end