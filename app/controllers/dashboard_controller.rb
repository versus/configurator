class DashboardController < ApplicationController
  set_tab :dashboard
  
  def index
    @files_enable = Section.files.enable
    @files_disable = Section.files.disable
    @files_draft = Section.files.draft
    @total_files =  Section.files.count
    @new_file = Section.new
  end

end
