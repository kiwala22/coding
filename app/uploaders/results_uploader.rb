# encoding: utf-8
class ResultsUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
  def extension_white_list
     %w(pdf)
  end
end
