class ProductManager
  attr_reader :cupcakes, :cakes, :cookies

  def initialize
    @cupcakes = build_cupcakes
    @cakes = build_cakes
    @cookies = build_cookies
  end

  def build_cakes
     [
       Cakes.new("Chocolate Cherry - Slice", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cake-1.png"),
       Cakes.new("Birthday Macroon - Slice", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cake-2.png"),
       Cakes.new("Berries & Cream - Slice", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cake-3.png"),
       Cakes.new("Chocolate Cherry", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cake-4.png"),
       Cakes.new("Birthday Macroon", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cake-5.png"),
       Cakes.new("Berries & Cream", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cake-6.png")
       ]
  end
  def build_cupcakes
    [
      Cupcakes.new("Vanilla Lavender", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cupcake-1.png"),
      Cupcakes.new("Spiced Anise", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cupcake-2.png"),
      Cupcakes.new("Strawberries & Cream", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cupcake-3.png"),
      Cupcakes.new("Fudged Center", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cupcake-4.png"),
      Cupcakes.new("Chocolate", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cupcake-5.png"),
      Cupcakes.new("Orange Cream", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cupcake-6.png")
    ]
  end
  def build_cookies
    [
      Cookies.new("Rose", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cookie-1.png"),
      Cookies.new("Birthday cookie", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cookie-2.png"),
      Cookies.new("Nutella", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cookie-3.png"),
      Cookies.new("Strawberries & Cream", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cookie-4.png"),
      Cookies.new("Vanilla bean", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cookie-5.png"),
      Cookies.new("Cookies & Cream", "https://raw.githubusercontent.com/S-MORA/Web-Projects/master/04_Ruby_Bakery/public/images/cookie-6.png")
     ]
  end

end
