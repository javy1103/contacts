class Contact < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_one :phone, dependent: :destroy
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :phone
  accepts_nested_attributes_for :address


  def smallImageURL
    "#{$request.protocol}#{$request.host}#{self.image.small.url}" unless self.image.small.url.blank?
  end

  def largeImageURL
    "#{$request.protocol}#{$request.host}#{self.image.large.url}" unless self.image.large.url.blank?
  end

end
