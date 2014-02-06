class KittensController < ApplicationController
  def kittens
    dir = Rails.root.join('app', 'assets', 'images');
    num_images = Dir[File.join(dir, '**', '*')].count { |file| File.file?(file) }
    if params[:id] == "random" || params[:id] == "rand" || params[:id] == "r"
      kitteh = rand(num_images) + 1
    else
      kitteh = (params[:id].hash.abs % num_images) + 1
    end
    send_file Rails.root.join('app', 'assets', 'images', "#{kitteh}.png"), type: 'image/png', disposition: 'inline', x_sendfile: true
  end
end
