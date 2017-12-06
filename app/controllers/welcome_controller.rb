class WelcomeController < ApplicationController
  def index
    @order = Order.new
    @posts = Post.all
    #Post.new(:image => 'https://pp.userapi.com/c841121/v841121119/44126/jWgz51f-Z3U.jpg', :title => 'Открыт новый набор на группы от 5 лет с января 2018', :body => 'Открыт новый набор на группы от 5 лет с января 2018').save!
  end

  def download
    send_file("#{Rails.root}/public/files/#{params[:file_name]}")
  end

end
