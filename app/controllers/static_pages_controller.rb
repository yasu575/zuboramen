class StaticPagesController < ApplicationController
  skip_before_action :require_login, only: %i[top]

  def top; end

  def terms; end

  def privacy; end

  def contact; end
end
