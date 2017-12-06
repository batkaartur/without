class WelcomeController < ApplicationController
  def index
    @order = Order.new
    @posts = Post.all
    #Post.new(:image => 'https://pp.userapi.com/c841121/v841121119/44126/jWgz51f-Z3U.jpg', :title => 'Открыт новый набор на группы от 5 лет с января 2018', :body => 'Открыт новый набор на группы от 5 лет с января 2018').save!
  end

  def download
    send_file("#{Rails.root}/public/files/#{params[:file_name]}")
  end

  def addnews 
  	Post.new(:image => 'https://pp.userapi.com/c834301/v834301119/4a0ee/d7nw02WwVf8.jpg', :title => 'Всем мальчикам скидка на протяжении года 10%', :body => 'Всем мальчикам скидка на протяжении года 10%').save!
  	Post.new(:image => 'https://pp.userapi.com/c841121/v841121119/44126/jWgz51f-Z3U.jpg', :title => 'Открыт новый набор на группы от 5 лет с января 2018', :body => 'Открыт новый набор на группы от 5 лет с января 2018').save!
  	Post.new(:image => 'https://pp.userapi.com/c841121/v841121119/44126/jWgz51f-Z3U.jpg', :title => 'Открыт новый набор на группы от 5 лет с января 2018', :body => 'Открыт новый набор на группы от 5 лет с января 2018').save!
  end

end
