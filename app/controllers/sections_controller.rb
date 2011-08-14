class SectionsController <  InheritedResources::Base 
  def index
   @sections = Section.scoped 
  end

end
