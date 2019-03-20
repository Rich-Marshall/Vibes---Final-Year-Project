class Event < ActiveRecord::Base
  belongs_to :user
  #for carrierwave, not currently needed but may implemement later on
  # mount_uploader :cover, CoverUploader
  attr_accessor :cover

  after_save :save_cover_image, if: :cover

  def save_cover_image
    filename = cover.original_filename
    folder = "app/assets/images/event_img/#{id}/cover"

    FileUtils::mkdir_p folder

    f = File.open File.join(folder, filename), "wb"
    f.write cover.read()

    self.cover = nil
    update cover_filename: filename
  end
end
