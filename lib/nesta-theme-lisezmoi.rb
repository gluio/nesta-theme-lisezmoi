require "nesta-contentfocus-extensions"
require "nesta-theme-lisezmoi/version"
require "nesta-theme-lisezmoi/app"

module Nesta
  module Theme
    module Lisezmoi
    end
  end
end

base_path = File.expand_path("../assets", File.dirname(__FILE__))
Nesta::Theme.register(:lisezmoi, { base: base_path })

