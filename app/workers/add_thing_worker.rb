class AddThingWorker
  require 'csv'
  include Sidekiq::Worker
  sidekiq_options retry:false

  def perform(csv)
    CSV.foreach(params[:csv], headers: true) do |thing|
      unless thing[0] == nil && thing[1] == nil
          Thing.create(name: thing[0], description: thing[1])
      end
    end
  end
end