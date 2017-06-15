class OverlayController < ApplicationController
  def active_index
    @active_nav = "active"
  end

  def all_index
    @active_nav = "all"
  end

  def new
    type = params[:type] || Overlay::DEFAULT_TYPE

    unless Overlay.valid_type? type
      raise ActiveRecord::RecordNotFound
    end

    @overlay = Overlay.new(:overlay_type => type)

    render
  end
end
