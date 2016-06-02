require 'rack/test'

RSpec.describe TinyRails::Controller do

  describe "#render" do
    TestController = Class.new(described_class) do
      def initialize
        @variable = 'variable'
      end
    end

    it "return rack compatible response" do
      result = TestController.new.render(view_path("simple_view.html"), status: 200)
      expect(result).to be_kind_of(Array)
      expect(result[0]).to be(200)
      expect(result[1]).to be_kind_of(Hash)
      expect(result[2]).to be_kind_of(Array)
      expect(result[2][0]).to match("My view has variable")
    end
  end

end
