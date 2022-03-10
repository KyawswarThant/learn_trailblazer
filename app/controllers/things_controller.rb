require "csv"

class ThingsController < ApplicationController
    def index
        run Thing::Operation::Index do |result|
            @things = result[:things]
        end
    end

    def new
        run Thing::Operation::Create::Present
    end

    def create
        result = run Thing::Operation::Create
        if result.success?
            return redirect_to things_path
        else
            @errors = result["contract.default"].errors.messages
            render :new
        end
    end

    def edit
        run Thing::Operation::Update::Present do |result|
            @thing = result[:model]
        end
    end

    def update
        run Thing::Operation::Update do |thing|
            return redirect_to things_path
        end
    end

    def destroy
        run Thing::Operation::Destroy do |thing|
            return redirect_to things_path
        end
    end

    def csv_form
        render "csv"
    end
    
    def csv_upload
        if params[:csv]
            # CSV.foreach(params[:csv], headers: true) do |thing|
            #     unless thing[0] == nil && thing[1] == nil
            #         Thing.create(name: thing[0], description: thing[1])
            #     end
            # end
            AddThingWorker.perform_async(params[:csv])
            redirect_to things_path
        end
    end
end
