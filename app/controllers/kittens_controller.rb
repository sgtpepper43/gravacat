class KittensController < ApplicationController
  def kittens
    dir = Rails.root.join('app', 'assets', 'images');
    num_images = Dir[File.join(dir, '**', '*')].count { |file| File.file?(file) }
    kitteh = (params[:id].hash.abs % num_images) + 1
    send_file Rails.root.join('app', 'assets', 'images', "#{kitteh}.png"), :type => 'image/png', :disposition => 'inline', :x_sendfile=>true
  end
  def meow
    send_data "meow meow meow meow meow meow meow", :type => 'text/text; charset=utf-8' :disposition => 'inline'
  end
end
