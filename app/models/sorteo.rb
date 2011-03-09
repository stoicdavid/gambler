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

  has_many :blocks, :dependent => :destroy
  has_one :premio, :dependent => :destroy
  
  accepts_nested_attributes_for :premio, :reject_if => lambda { |a| a[:nombre].blank?}, :allow_destroy => true
  accepts_nested_attributes_for :blocks, :reject_if => lambda { |a| a[:num_boletos].blank?}, :allow_destroy => true
  

  
end
