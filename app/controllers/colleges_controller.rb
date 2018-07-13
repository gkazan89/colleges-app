class CollegesController < ApplicationController
  def index
    @colleges = College.all
    render "index.json.jbuilder"
  end

  def show
    @college = College.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @college = College.new(
      name: params[:name],
      city: params[:city],
      mascot: params[:mascot],
      )
    @college.save
    render "show.json.jbuilder"
  end

  def update
    @college = College.find_by(id: params[:id])
    @college.name = params[:name] || @college.name
    @college.city = params[:city] || @college.city
    @college.mascot = params[:mascot] || @college.mascot
    @college.save
    render "show.json.jbuilder"
  end

  def destroy
    @college = College.find_by(id: params[:id])
    @college.destroy
    render json: {message: "College Eliminated"}
  end
end
