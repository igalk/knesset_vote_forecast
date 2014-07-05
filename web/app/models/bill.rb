class Bill < ActiveRecord::Base
  has_one :bill_prediction
end
