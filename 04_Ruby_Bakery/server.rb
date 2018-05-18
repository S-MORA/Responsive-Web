require 'sinatra'
require './View_manager'
require './cupcake_class'
require './cake_class'
require './cookie_class'




get ('/') do
  erb(:landing)
end

get ('/cupcakes') do
  cupcake_1 = Cupcakes.new("Vanilla Lavender", "/images/cupcake-1.png")
  cupcake_2 = Cupcakes.new("Spiced Anise", "/images/cupcake-2.png")
  cupcake_3 = Cupcakes.new("Strawberries & Cream", "/images/cupcake-3.png")
  cupcake_4 = Cupcakes.new("Fudged Center", "/images/cupcake-4.png")
  cupcake_5 = Cupcakes.new("Chocolate", "/images/cupcake-5.png")
  cupcake_6 = Cupcakes.new("Orange Cream", "/images/cupcake-6.png")
  cupcakes = []
  cupcakes.push(cupcake_1, cupcake_2, cupcake_3, cupcake_4, cupcake_5, cupcake_6)
  @view_manager = ViewManager.new('Cupcakes', cupcakes,'/images/cupcake-header.png')
  erb(:products)
end

get ('/cakes') do
  cake_1 = Cakes.new("Chocolate Cherry - Slice", "/images/cake-1.png")
  cake_2 = Cakes.new("Birthday Macroon - Slice", "/images/cake-2.png")
  cake_3 = Cakes.new("Berries & Cream - Slice", "/images/cake-3.png")
  cake_4 = Cakes.new("Chocolate Cherry", "/images/cake-4.png")
  cake_5 = Cakes.new("Birthday Macroon", "/images/cake-5.png")
  cake_6 = Cakes.new("Berries & Cream", "/images/cake-6.png")
  cakes = []
  cakes.push(cake_1, cake_2, cake_3, cake_4, cake_5, cake_6)
  @view_manager = ViewManager.new('Cakes', cakes, '/images/cake-header.png')
 erb(:products)
end

get ('/cookies') do
  cookie_1 = Cookies.new("Rose", "/images/cookie-1.png")
  cookie_2 = Cookies.new("Birthday cake", "/images/cookie-2.png")
  cookie_3 = Cookies.new("Nutella", "/images/cookie-3.png")
  cookie_4 = Cookies.new("Strawberries & Cream", "/images/cookie-4.png")
  cookie_5 = Cookies.new("Vanilla bean", "/images/cookie-5.png")
  cookie_6 = Cookies.new("Cookies & Cream", "/images/cookie-6.png")
  cookies = []
  cookies.push(cookie_1, cookie_2, cookie_3, cookie_4, cookie_5, cookie_6)
  @view_manager = ViewManager.new('Cookies', cookies, '/images/cookie-header.png')
 erb(:products)
end
