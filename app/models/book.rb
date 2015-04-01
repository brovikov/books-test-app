class Book < ActiveRecord::Base

  belongs_to :category
  validates_presence_of :title, :author, :cover
  
  mount_uploader :cover, CoverUploader

  scope :cat, ->(category) { joins(:category).where('categories.name' => category) }

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ? or author LIKE ?', "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end

end
