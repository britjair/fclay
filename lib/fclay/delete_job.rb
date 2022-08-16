module Fclay
  class DeleteJob < ActiveJob::Base

    queue_as :default

    def perform(file)
      FileUtils.rm(file, force: true)
    end

  end
end
