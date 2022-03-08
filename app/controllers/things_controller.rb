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
        @thing = Thing.find(params[:id])
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
end
