# encoding: utf-8
class CustomerController < ApplicationController
  unloadable

  def index
    #@issues = Issue.group("subject").order('subject asc')
    issues = Issue.all
    @companies = Array.new

    issues.each do |issue|
      company = issue.custom_field_values.detect{|c| c.custom_field.name[0, 3] == "A1."}

      if !company.value.nil?
        @companies.push( company.value )
      end
    end
    #”„ã‹àŠz‡H
    
    #Distinct
    @companies.uniq!

    respond_to do |format|
      format.html
      format.json { render json: @companies.to_json(
        #:only => ['name']
      ) }
    end
  end

end
