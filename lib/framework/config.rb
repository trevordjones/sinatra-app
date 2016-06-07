module Framework
  module Config
    extend self

    def root
      @root ||= File.expand_path("../../../", __FILE__)
    end

    def view_path
      "#{root}/views"
    end

    def asset_path
      "#{root}/assets"
    end

  end
end
