class Exercise < ActiveRecord::Base
has_many :programs ,:through => :program_exercises
belongs_to :target_muscle

has_attached_file :photo,
				  :styles => {
      						:thumb=> "100x100#",
      						:small  => "150x150>",
      						:large  => "450x450>"},
                  :url  => "/assets/exercise/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/exercise/:id/:style/:basename.:extension"

validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg','image/pjpeg', 'image/png']

validates_presence_of :name
validates_length_of :name, :maximum=>15


end
