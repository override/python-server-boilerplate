require "vagrant"

module VagrantPlugins
  module Fabric
    class Plugin < Vagrant.plugin("2")
      name "fabric"

      config(:fabric, :provisioner) do
        require File.expand_path("../config", __FILE__)
        Config
      end

      provisioner(:fabric) do
        require File.expand_path("../provisioner", __FILE__)
        Provisioner
      end
    end
  end
end
