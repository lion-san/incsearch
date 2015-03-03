class CustomerController < ApplicationController
  unloadable
  before_filter :find_project

  def index
    @issues = Issue.group("subject").order('subject asc')
    #”„ã‹àŠz‡H
  end
end
