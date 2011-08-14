class FieldTypesController <  InheritedResources::Base
  set_tab :field_types

  def index
    @fields =  FieldType.all
    @field_type = FieldType.new
  end
  
  def show
    redirect_to field_types_path
  end
end
