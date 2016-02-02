class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.

  validates :title, presence: true,
            length: { minimum: 5 }
end
