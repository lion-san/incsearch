class CustomerController < ApplicationController
  unloadable
  before_filter :find_project

  def index
    @issues = Issue.group("subject").order('subject asc')
    #������z���H
  end
end
