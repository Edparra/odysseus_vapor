# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

p1 = Product.create!({title:'Staylit Chief Vaporizer Pen Kit', description:'Staylit Chief Vaporizer Pen Kit comes with all the essentials needed to operate at full capacity.', pic_url:'http://www.marijuanapackaging.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/s/t/staylit-chief-vaporizer-pen-kit-chrome-0.jpg'})
p2 = Product.create!({title:'Double G Snoop Dogg G Pen', description:'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', pic_url:'http://img.diytrade.com/seimg/2079677/40384550/Double_G_Snoop_Dogg_G_Pen_Herbal_Vaporizer_herbal_tank_Box_Set.jpg'})
p3 = Product.create!({title:'E-Liquid', description:'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', pic_url:'http://blog.vaporjedi.com/wp-content/uploads/2015/06/mr-good-ejuice.jpg'})
p4 = Product.create!({title:'Box Vapor Cannon', description:'Great Easy to use vape for herbals', pic_url:'http://vapenow.com/images/vaporcannon.JPG'})
p5 = Product.create!({title:'Volcano Vaporizer', description:'Great vape for herbals', pic_url:'http://legalsmokeshop.com/wp-content/uploads/2014/12/vaporizer.jpg'})
p6 = Product.create!({title:'Cloud Pens', description:'Great easy to use pens for on the go', pic_url:'http://www.vaporizer-review.com/wp-content/uploads/2015/07/cloud-penz-colors.jpg'})
p7 = Product.create!({title:'Kangertech Topbox Mini', description:'Simple starter kit without battery', pic_url:'https://www.canvape.com/v/vspfiles/photos/KangTopBoxMini-2.jpg'})
p8 = Product.create!({title:'Kangertech Clearomizer Tank', description:'Constructed of Pyrex Glass and High-Quality 304 Stainless Steel ', pic_url:'http://cdn.shopify.com/s/files/1/0400/6105/products/TOPTANK_MINI2.jpg?v=1453767933'})
p9 = Product.create!({title:'Kangertech Kbox 200', description:'Dual box mod with five different modes', pic_url:'https://aspenvalleyvapes.com/wp-content/uploads/2015/12/kangertech-kbox-200-watt-510x349.png'})
p10 = Product.create!({title:'Joyetech eVic-VTC', description:'Innovative and mature control mod', pic_url:'http://www.heavengifts.com/public/images/52/75/3c/cb40136bc89a7a84d69a14e4b27cab29.jpg'})
p11 = Product.create!({title:'Smok H-PRIV Kit', description:'Starter kit with two sub-ohm cores', pic_url:'http://www.vapingbest.com/images/Smok-H-PRIV-KIT.jpg'})
p12 = Product.create!({title:'Smok Brit Flavor tank', description:'Top airflow system for massive cloud of vapor', pic_url:'http://www.smoktech.com/Images/Slide/1508211714072841.jpg'})
p13 = Product.create!({title:'Sigelei 75W Temp Mod', description:'Overheating and temperature control included', pic_url:'http://www.sigelei.com/images/201508/goods_img/621_P_1438909846226.jpg'})
p14 = Product.create!({title:'Innokin iSub tank', description:'Tanks with a large 3ml capacity', pic_url:'http://www.innokin.com/images/2016/04/isub-v-20160414-480x480.jpg'})
p15 = Product.create!({title:'Vapor-Fi E-Liquid', description:'The Reserve Collection from Vapor-Fi', pic_url:'https://www.vaporfi.com/skin/frontend/default/vaporfi/images/img-reserve-collection.png'})
p16 = Product.create!({title:'Vapenation Liquid', description:'The Junction by Vapenation', pic_url:'http://www.vapenation.ca/wp-content/uploads/2015/05/vape-moshi.jpg'})
p17 = Product.create!({title:'Ripe Vape Collection', description:'A premium blend from Cloud N9ne', pic_url:'http://www.cloud9vapepure.com/wp-content/uploads/2014/10/Ripe-Vapes-550x356.jpg'})
p18 = Product.create!({title:'Patriot Dripping Atomizer', description:'Made from stainless steel', pic_url:'http://vapingdiscounts.com/wp-content/uploads/2014/04/patriot745.jpg'})
p19 = Product.create!({title:'Aether Tech', description:'Atomizer - Customized in different brushes', pic_url:'https://s-media-cache-ak0.pinimg.com/originals/2d/91/21/2d91218f503b6d25d38f438130a65358.jpg'})
p20 = Product.create!({title:'Newest Oil Dome Vaporizer', description:'Oil dome for liquid', pic_url:'http://www.buyevapor.com/images/v/201310/13814750260.jpg'})




Wishlist.destroy_all

wishlist1 = Wishlist.new({})
wishlist1.products.push(p3);
wishlist1.products.push(p5);

User.destroy_all

user1 = User.new({
  email: 'user1@gmail.com',
  password: 'test1234',
  password_confirmation: 'test1234',
  wishlist: wishlist1
})
user1.save

puts "All Users: #{User.all}"
puts "User1 has wishlist: #{User.first.wishlist}"
