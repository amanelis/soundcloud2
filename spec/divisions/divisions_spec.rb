require File.expand_path('../../spec_helper', __FILE__)

describe Groupon::Client do
  context "api" do
    before(:all) do
      @client = Groupon::Client.new(API_KEY)
    end
    context "divisions" do
      context "search divisions" do
        # use_vcr_cassette
        context "all" do
          before(:all) do
            @divisions = @client.divisions
            puts @divisions.inspect
          end
          context "the results" do
            subject { @divisions }
            specify { should_not be_nil }
            specify { should have_at_least(1).items }
          end
        end
      end
    end
  end
end
