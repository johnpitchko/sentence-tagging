class EntitiesController < ApplicationController
  def create
    entity = Entity.create(entity_params)
    entity.sentences << Sentence.find(params[:entity][:sentence_id])
    flash[:notice] = 'Tag success'
    redirect_to :root
  end

  private

  def entity_params
    params.require(:entity).permit(:text, :type_id)
  end

  def create_entity
    ActiveRecord::Base.transaction do
      byebug
    end
  end
end
