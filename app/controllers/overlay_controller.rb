class OverlayController < ApplicationController
  def active_index
    @active_nav = "active"
  end

  def all_index
    @active_nav = "all"
  end
end
