class SentencesController < ApplicationController
  before_action :set_sentence, only: %i[show edit update destroy]

  # GET /sentences or /sentences.json
  def index
    @sentences = Sentence.all
  end

  # POST /sentences
  def create
    @sentence = Sentence.new(sentence_params)

    respond_to do |format|
      if @sentence.save
        format.html { redirect_to root_path, notice: 'Sentence was successfully created.' }
      else
        format.html { redirect_to root_path, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sentences/1
  def destroy
    @sentence.destroy
    respond_to do |format|
      format.html { redirect_to sentences_url, notice: 'Sentence was successfully destroyed.' }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_sentence
    @sentence = Sentence.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def sentence_params
    params.require(:sentence).permit(:text)
  end
end
