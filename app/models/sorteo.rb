# == Schema Information
# Schema version: 20110221052338
#
# Table name: sorteos
#
#  id          :integer(4)      not null, primary key
#  titulo      :string(255)
#  descripcion :string(255)
#  num_boletos :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

class Sorteo < ActiveRecord::Base
end
