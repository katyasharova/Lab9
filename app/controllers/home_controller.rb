# frozen_string_literal: true


class HomeController < ApplicationController
  def input; end

  def output
    @arr = []
    txt = params[:txt]
    (txt.to_i + 1).times { |i| @arr.append(i) if ((i**2).to_s.reverse.to_i == (i**2)) && (i.to_s.reverse.to_i == i) } if check_params(txt)
    respond_to do |format|
      format.html
      format.js
    end
  end

  protected

  def check_params(str)
    !str.empty? && str.split.length == 1 && str.to_i.to_s == str ? true : false
  end
end
