module Engineblock

  class PistonsController < ::ApplicationController

    def index
      @pistons = Piston.all
    end

  end
end
