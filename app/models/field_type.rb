class FieldType < ActiveRecord::Base
 has_many :fields

 before_save :replace_slashes

  private
    def replace_slashes
      value_validate.gsub!('/','')
    end
end
