class TrackkrModule < ActiveRecord::Base
  validates :name, :image_url, :presence => true
#  validates :image_url, :format => {
#  :with             => %r{\.(gif|jpg|png)$}i,
#  :message          => 'URL Format should be GIF, JPG or PNG '
#  }
  validates :name, :uniqueness => true
  
  has_many :t_categories, :dependent => :destroy
  
end
