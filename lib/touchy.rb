require "touchy/version"
require "fastimage"
require "rmagick"
include Magick

module touchy
  def self.find_odd_size_images(image_paths)
    image_paths.map do |image_path|
      size = FastImage.size(image_path)
      image_path if !size.nil? && (size[0].odd? || size[1].odd?)
    end.reject(&:nil?)
  end

  def self.create_transparent_image(x, y)
    Image.new(x, y) do |canvas|
      canvas.background_color= "Transparent"
    end
  end

  def self.extend_size_to_odd(image)
    x = image.columns
    y = image.rows

    x += 1 if x % 2 != 0
    y += 1 if y % 2 != 0

    base = create_transparent_image x, y
    base.composite(image, 0, 0, OverCompositeOp)
  end
end
