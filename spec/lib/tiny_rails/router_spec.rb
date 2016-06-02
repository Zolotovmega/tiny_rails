require 'rack/test'

RSpec.describe TinyRails::Router do
  subject { described_class.new }

  describe "#draw" do
    it "creates a route" do
      expect {
        subject.draw { map '/videos', to: 'videos#index' }
      }.to change { subject.routes.count }.by(1)
    end
  end

  describe "#match" do
    context "when map to application" do
      let(:app) { [200, {}, ["Response"]] }

      before do
        subject.map '/videos', to: app
      end

      it "returns rack compatible application" do
        matched_app = subject.match('/videos')
        expect(matched_app).to eql(app)
      end
    end

    context "when map to string" do
      WithActionController = Class.new(TinyRails::Controller) do
        def index
        end
      end

      before do
        subject.map '/videos', to: 'with_action#index'
      end

      it "returns rack compatible application" do
        matched_app = subject.match('/videos')
        expect(matched_app).to respond_to(:call)
        expect(matched_app.owner).to eql(WithActionController)
      end
    end
  end
end
