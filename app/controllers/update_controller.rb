class UpdateController < ApplicationController

  def repo_availability
    return system 'ping -c 1 github.com'
  end

  def pull
    location = params[:location]
    system "cd #{location}"
    return system 'git pull'
  end

  def sync
  end



end
