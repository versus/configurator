class FieldTypesController <  InheritedResources::Base
  set_tab :field_types

  def index
    @fields =  FieldType.all
  end
end
