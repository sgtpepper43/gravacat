class StaticPagesController < ApplicationController
  def home
    dir = Rails.root.join('app', 'assets', 'images');
    @num_images = Dir[File.join(dir, '**', '*')].count { |file| File.file?(file) }
  end
end
