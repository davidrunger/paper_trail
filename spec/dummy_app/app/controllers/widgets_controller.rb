# frozen_string_literal: true

class WidgetsController < ApplicationController
  def paper_trail_enabled_for_controller # rubocop:disable Naming/PredicateMethod
    request.user_agent != "Disable User-Agent"
  end

  def create
    @widget = Widget.create widget_params
    head :ok
  end

  def update
    @widget = Widget.find params[:id]
    @widget.update widget_params
    head :ok
  end

  def destroy
    @widget = Widget.find params[:id]
    @widget.destroy
    head :ok
  end

  private

  def widget_params
    params[:widget].permit!
  end
end
