require 'rack/test'

RSpec.describe TinyRails::Render do
  class SimapleClass
    def initialize
      @variable = "variable"
    end

    def get_binding
      binding
    end
  end

  describe ".call" do
    it "returns rendered content" do
      instance = SimapleClass.new
      data = described_class.call(File.join(TinyRails.root, 'spec/fixtures/simple_view.html.erb'), instance.get_binding)
      expect(data).to match("My view has variable")
    end
  end
end
