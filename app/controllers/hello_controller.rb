#coding: utf-8

class HelloController < ApplicationController
  def index
    render :text => 'こんにちは世界'
  end

  def view
    @msg = 'こんにちは世界 on msg'
  end

end
