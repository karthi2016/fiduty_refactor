class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :risk_level, :phone, :action, :martial_status, :dependants, :citizenship, :occupation, :dob, :address, :ssn, :user_portfolios
  has_many :portfolios
end
