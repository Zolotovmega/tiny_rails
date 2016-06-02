RSpec.describe TinyRails::Router::Route do
  describe "#match?" do
    let(:path) { "/videos" }

    subject { described_class.new(path, {}) }

    context "when path matches" do
      it "returns true" do
        expect(subject.match?(path)).to eql(true)
      end
    end

    context "when path doesn't matche" do
      it "returns false" do
        expect(subject.match?("/path")).to eql(false)
      end
    end
  end

  describe "#app" do
    
  end
end
