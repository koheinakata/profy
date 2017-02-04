class TopController < ApplicationController
  def index
    @question = Question.new
    # form_forにコントローラからインスタンスを渡していないとエラーになるのでインスタンス作成
    @questions = current_user.group.questions
  end
end
