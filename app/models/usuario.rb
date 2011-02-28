# == Schema Information
# Schema version: 20110221052338
#
# Table name: usuarios
#
#  id                   :integer(4)      not null, primary key
#  email                :string(255)     default(""), not null
#  encrypted_password   :string(128)     default(""), not null
#  password_salt        :string(255)     default(""), not null
#  reset_password_token :string(255)
#  remember_token       :string(255)
#  remember_created_at  :datetime
#  sign_in_count        :integer(4)      default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#

class Usuario < ActiveRecord::Base

  scope :with_role, lambda {|role| {:conditions => "roles_mask & {2**ROLES.index(role.to_s)} > 0"}}
  ROLES = %w[admin promotor cliente]
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nombre_usuario, :roles
  validates :nombre_usuario, :presence => true, :uniqueness => true
  
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map {|r| 2**ROLES.index(r)}.sum
  end
  
  def roles
    ROLES.reject {|r| ((roles_mask || 0) & 2**ROLES.index(r)).zero?}
  end
  
  def rol?(rol)
    roles.include? rol.to_s
  end
  
end
