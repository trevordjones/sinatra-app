module Framework
  class Default < Base

    before do
      @session = env["rack.session"]
    end

    get "/" do
      slim :index, layout: :"layouts/unauthenticated"
    end

    not_found do
      slim :"errors/404"
    end

  end
end
