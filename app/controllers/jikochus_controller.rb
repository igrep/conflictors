# -*- coding: utf-8 -*-
# GistID: 5023699
# Tried by: Rails 3.2.12

# 自己中な (Selfish) Controller
class JikochusController < ApplicationController

  def index
    @jikochus = Jikochu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @jikochus }
    end
    #=> SystemStackError in JikochusController#index
    #=> stack level too deep
  end

  def request # 自己中な (selfish) request
    # 自己中なことにrequestを上書きしてしまう
    # 結果、他のアクションでも SystemStackError が起こる
    # It's as selfish as overriding the request method,
    # which causes SystemStackError in its other actions.
    render text: "どけどけどけー！オレのアクションだー！"
  end
end
