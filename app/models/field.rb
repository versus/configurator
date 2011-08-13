class Field < ActiveRecord::Base
  belongs_to :field_type
  
  belongs_to :section
  belongs_to :conf

  before_validation :check_value_validate
  
  validates :name,  :allow_nil => false, :presence => true
  validates :value,  :allow_nil => false, :presence => true
  validates :field_type,  :allow_nil => false, :presence => true


private
  def check_value_validate
    if (Regexp.new(field_type.value_validate)=~value) == 0
      true
    else
      false
    end
  end
end
