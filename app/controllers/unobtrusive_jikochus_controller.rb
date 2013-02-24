# -*- coding: utf-8 -*-
# GistID: 5023809
# Tried by: Rails 3.2.12

# 控えめで (Unobtrusive) 自己中な (Selfish) Controller
class UnobtrusiveJikochusController < ApplicationController

  def index
    @unobtrusive_jikochus = UnobtrusiveJikochu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @unobtrusive_jikochus }
    end
    #=> NoMethodError in UnobtrusiveJikochusController#index
    #=> undefined method `content_mime_type' for nil:NilClass
  end

  def request # 自己中な (selfish) request
    # 自己中なことにrequestを上書きしてしまう。
    # It's as selfish as overriding the request method.
    # でも控えめなので何もrenderしない。
    # but it's so unobtrusive that doesn't render anything.

    # 結果、NoMethodErrorとなる。
    # As a result, it causes NoMethodError.
  end
end
