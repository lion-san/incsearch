# encoding: utf-8
class CustomerController < ApplicationController
  unloadable

  def index
    companies = CustomValue.find_all_by_custom_field_id(1)
    @companies = Array.new 
    

    companies.each do |company|
      if !company.value.nil?
        @companies.push( company.value )
      end
    end

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
