require 'sinatra'
require 'mailgun'
require 'sinatra/flash'
require './ProductManager'
require './View_manager'
require './cupcake_class'
require './cake_class'
require './cookie_class'

enable :sessions

products = ProductManager.new

get ('/') do
  erb(:landing)
end

get ('/cupcakes') do
  @view_manager = ViewManager.new('Cupcakes', products.cupcakes,'/images/cupcake-header.png')
  erb(:products)
end

get ('/cakes') do
  @view_manager = ViewManager.new('Cakes', products.cakes, '/images/cake-header.png')
 erb(:products)
end

get ('/cookies') do
  @view_manager = ViewManager.new('Cookies', products.cookies, '/images/cookie-header.png')
 erb(:products)
end

get ('/find-a-bakery') do
  erb(:find_a_bakery)
end

post ('/mail-list') do
  @products = products
  mg_client = Mailgun::Client.new (ENV["MAILGUN_API_KEY"])
  @user_email_input = params[:email]
  message_params =  { from: 'sharonmorato1@gmail.com',
                    to:   @user_email_input,
                    subject: "Welcome to the Friday Bakery",
                    html:   erb(:outgoing_email, layout: false)
                }
   mg_client.send_message ENV['MAILGUN_API_DOMAIN'], message_params
   flash[:success] = "Success!"
   redirect '/'
end

post ('/contact-us') do
  mg_client = Mailgun::Client.new (ENV["MAILGUN_API_KEY"])
  @user_email_input = params[:email]
  @user_message_input = params[:message]
  message_params = { from: 'sharonmorato1@gmail.com',
                     to:   @user_email_input,
                     subject: "The Friday Bakery Has Received Your Message",
                     text:    "Thank you for contacting us, we will be with you shortly!
                            Here is your message to us: #{@user_message_input}"
                }
   mg_client.send_message ENV['MAILGUN_API_DOMAIN'], message_params
   flash[:success] = "Success!"
   redirect '/find-a-bakery'
end

get ('/aboutus') do
  erb(:under_construction)
end

get ('/catering') do
  erb(:under_construction)
end

get ('/gallery') do
  erb(:under_construction)
end
