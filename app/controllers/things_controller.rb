class ThingsController < ApplicationController
    def index
        run Thing::Operation::Index do |result|
            @things = result[:things]
        end
    end

    def new
        @thing = Thing.new
    end

    def create
        run Thing::Operation::Create do |result|
            return redirect_to things_path
            print "result => #{result}"
        end
        render :new
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
