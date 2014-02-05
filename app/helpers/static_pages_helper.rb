module StaticPagesHelper
  def getImages(num_images)
    output = ""
    i = 0
    while i < num_images do
      i += 1
      output += image_tag("#{i.to_s}.png", alt: "Kitteh#{i.to_s}") 
    end
    output.html_safe
  end
end
