class SectionsController <  InheritedResources::Base
  set_tab :sections
  
  def index
   @sections = Section.scoped 
  end

end
