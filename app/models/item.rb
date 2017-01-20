class Item < ApplicationRecord
  validates_presence_of :title

  # This method associates the attribute ":avatar" with a file attachment
  has_attached_file :photo, styles: {
    thumb: '50x50>',
    square: '200x200#',
    medium: '300x300>'
  },
  :default_url => lambda { |attach|
    file_name = if attach.instance.completed?
      "checked"
    else
      "unchecked"
    end

    "http://mg-bucket-list.s3.amazonaws.com/default/items/:style/#{file_name}.png"
  }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
