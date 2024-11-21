class AboutsController < InheritedResources::Base
    def index
      @about = About.order("created_at").last
    end
end
