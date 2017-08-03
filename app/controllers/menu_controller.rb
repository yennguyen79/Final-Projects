class MenuController < ApplicationController
  def index
    @sections = Sections.all
  end
end
