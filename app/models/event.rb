class Event < ActiveRecord::Base
  belongs_to :user
  #for carrierwave, not currently needed but may implemement later on
  # mount_uploader :cover, CoverUploader
  attr_accessor :cover

  after_save :save_cover_image, if: :cover

  validates :name, :start_date, :end_date, :city,  :venue, :presence => { :message => "cant be blank"}

  validate :start_date_cannot_be_in_the_past, :end_date_cannot_be_in_the_past

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def end_date_cannot_be_in_the_past
    if end_date.present? && end_date < Date.today
      errors.add(:end_date, "can't be in the past")
    end
  end

  def start_date_format
		if self.start_date !=nil
			self.start_date = start_date.strftime("%d-%m-%Y")
		end
	end

  def end_date_format
		if self.end_date !=nil
			self.end_date = end_date.strftime("%d-%m-%Y")
		end
	end


  def save_cover_image
    filename = cover.original_filename
    folder = "app/assets/images/event_img/#{id}/cover"

    FileUtils::mkdir_p folder

    f = File.open File.join(folder, filename), "wb"
    f.write cover.read()

    self.cover = nil
    update cover_filename: filename
  end

  def city=(s)
    super s.titleize
  end


end
