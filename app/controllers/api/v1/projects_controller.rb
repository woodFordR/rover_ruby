class Api::V1::ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show update destroy ]

  def index
    @projects = Project.order(created_at: :desc)
    debugger()

    render json: serialize(@projects)
  end

  def show
    # sleep 5
    render json: @project
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      render json: @project, status: :created, api_v1_project_url: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(
        :avatar, :description, :owner, :title, :logo,
        :code_description, :code_link, :code_snippet
      )
    end
end
