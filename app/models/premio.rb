# == Schema Information
# Schema version: 20110221052338
#
# Table name: premios
#
#  id          :integer(4)      not null, primary key
#  nombre      :string(255)
#  descripcion :string(255)
#  precio      :decimal(8, 2)
#  sorteo_id   :integer(4)      not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Premio < ActiveRecord::Base
end
