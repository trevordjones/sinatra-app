module Framework
  class Default < Base

    before do
      @session = env["rack.session"]
      @title = "Framework for Sinatra"
    end

    get "/" do
      slim :index, layout: :"layouts/unauthenticated"
    end

    not_found do
      slim :"errors/404"
    end

  end
end
