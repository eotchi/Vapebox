class Liquid < ActiveRecord::Base
  attr_accessible :base, :name, :nicotine, :notes
  validates :name, :base, :nicotine, presence: true
end
