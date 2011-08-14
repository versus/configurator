class FieldType < ActiveRecord::Base
  has_many :fields

  before_save :replace_slashes

  validates :name, :allow_nil => false, :presence => true, :uniqueness => true
  validates :value_validate, :persence => true, :allow_nil => false
  validates :length_min, :numericality => true, :persence => true, :inclusion => { :in => 1..10 }, :allow_nil => false
  validates :length_max, :numericality => true, :persence => true, :inclusion => { :in => 10..100 }, :allow_nil => false

  private
    def replace_slashes
      value_validate.gsub!('/','')
    end
end
