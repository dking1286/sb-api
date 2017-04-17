class Api::V1::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    @skills = regarding.skills if regarding
  end

  private

  def regarding
    return if params[:regarding_type].nil?
    regarding_class = params[:regarding_type].constantize
    regarding_class.find(params[:regarding_id])
  end
end
