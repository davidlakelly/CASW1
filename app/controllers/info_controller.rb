class InfoController < ApplicationController
  require 'rubygemsorg'
  def infogem
    if params[:search_gem].to_s.present?
      name = params[:search_gem]
      response = RubyGemsOrg.get_gem_info(name)
      name = response['name']
      @dependency = Dependency.find_by(:name => name)
      @dependency = Dependency.create(:name=>response["name"],:authors=>response["authors"],:version=>response["version"])
    else
    redirect_to(root_url)  
    end
  end

  def infoauthor
    if params[:search_author].to_s.present?
      @author = params[:search_author]
      @response = RubyGemsOrg.get_gems_of_author(@author)

    else
        redirect_to(root_url)
    end
  end

  def infolatestgems
    @latest = RubyGemsOrg.get_latest 
  end
end
