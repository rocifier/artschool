class Tabs < ActiveRecord::Base
  validates :name, presence: true
  validates :ajax_content, presence: true
end
