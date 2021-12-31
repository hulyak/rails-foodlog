class ArchivesController < ApplicationController
  def index
    @user_entries = UserEntry.all.group_by(&:day)
  end
end