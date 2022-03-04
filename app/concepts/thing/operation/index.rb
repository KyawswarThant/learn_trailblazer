module Thing::Operation
  class Index < Trailblazer::Operation
    step :get_things

    def get_things(options, **)
      options['things'] = Thing.all
    end
  end
end
