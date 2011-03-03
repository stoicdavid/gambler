# == Schema Information
# Schema version: 20110221052338
#
# Table name: blocks
#
#  id          :integer(4)      not null, primary key
#  num_boletos :integer(4)
#  folio       :integer(4)
#  sorteo_id   :integer(4)      not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Block < ActiveRecord::Base
  belongs_to :sorteo
  belongs_to :promotor, :class_name => "Usuario", :foreign_key => "promotor_id"
  has_many  :boletos
end
