class ProductManager
  attr_reader :cupcakes, :cakes, :cookies

  def initialize
    @cupcakes = build_cupcakes
    @cakes = build_cakes
    @cookies = build_cookies
  end

  def build_cakes
     [
       Cakes.new("Chocolate Cherry - Slice", "/images/cake-1.png"),
       Cakes.new("Birthday Macroon - Slice", "/images/cake-2.png"),
       Cakes.new("Berries & Cream - Slice", "/images/cake-3.png"),
       Cakes.new("Chocolate Cherry", "/images/cake-4.png"),
       Cakes.new("Birthday Macroon", "/images/cake-5.png"),
       Cakes.new("Berries & Cream", "/images/cake-6.png")
       ]
  end
  def build_cupcakes
    [
      Cupcakes.new("Vanilla Lavender", "/images/cupcake-1.png"),
      Cupcakes.new("Spiced Anise", "/images/cupcake-2.png"),
      Cupcakes.new("Strawberries & Cream", "/images/cupcake-3.png"),
      Cupcakes.new("Fudged Center", "/images/cupcake-4.png"),
      Cupcakes.new("Chocolate", "/images/cupcake-5.png"),
      Cupcakes.new("Orange Cream", "/images/cupcake-6.png")
    ]
  end
  def build_cookies
    [
      Cookies.new("Rose", "/images/cookie-1.png"),
      Cookies.new("Birthday cake", "/images/cookie-2.png"),
      Cookies.new("Nutella", "/images/cookie-3.png"),
      Cookies.new("Strawberries & Cream", "/images/cookie-4.png"),
      Cookies.new("Vanilla bean", "/images/cookie-5.png"),
      Cookies.new("Cookies & Cream", "/images/cookie-6.png")
     ]
  end

end
