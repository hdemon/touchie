require "touchie/version"
require "fastimage"
require "rmagick"
include Magick

module Touchie
  def self.find_odd_size_images(image_paths)
    image_paths.map do |image_path|
      size = FastImage.size(image_path)
      image_path if !size.nil? && (size[0].odd? || size[1].odd?)
    end.reject(&:nil?)
  end
end
