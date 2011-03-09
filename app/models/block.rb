# == Schema Information
# Schema version: 20110309070412
#
# Table name: blocks
#
#  id           :integer(4)      not null, primary key
#  num_boletos  :integer(4)
#  folio        :integer(4)
#  sorteo_id    :integer(4)      not null
#  created_at   :datetime
#  updated_at   :datetime
#  promotor_id  :integer(4)
#  folio_max    :integer(4)
#  colocaciones :integer(4)
#

class Block < ActiveRecord::Base
  belongs_to :sorteo
  belongs_to :promotor
  has_many  :boletos
  
  validates_presence_of :promotor_id, :on => :create
end
