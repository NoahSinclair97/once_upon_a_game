class AboutsController < InheritedResources::Base

    def aboutus
      @about = About.order("created_at").last
    end

end
