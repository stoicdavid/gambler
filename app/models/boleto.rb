# == Schema Information
# Schema version: 20110221052338
#
# Table name: boletos
#
#  id         :integer(4)      not null, primary key
#  folio      :integer(4)
#  nombre     :string(255)
#  rfc        :string(255)
#  dir        :string(255)
#  cp         :string(255)
#  ciudad     :string(255)
#  telefono   :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  block_id   :integer(4)      not null
#

class Boleto < ActiveRecord::Base
  belongs_to :block
  
  def self.asigna_folio
    
    if maximum("folio").nil?
      1
    else
      maximum("folio") + 1
    end
  end
  
end
