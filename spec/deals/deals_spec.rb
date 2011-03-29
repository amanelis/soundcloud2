require File.expand_path('../../spec_helper', __FILE__)

describe Groupon::Client do
  context "api" do
    before(:all) do
      @client = Groupon::Client.new(API_KEY)
    end
    context "deals" do
      context "search" do
        context "with no args" do
          use_vcr_cassette
          before(:all) do
            @deals = @client.deals
          end
          subject { @deals }
          it { should_not be_nil }
          it { should be_an(Array) }
          it { should have_at_least(1).items }
        end
        context "with Brooklyn, NY lat/long" do
          before(:all) do
            @deals = @client.deals(:lat => "40.7325859", :lng => "-73.9568557")
          end
          subject { @deals }
          it { should_not be_nil }
          subject { @deals.first.division.name }
          it { should eql "New York City" }
          subject { @deals.last.division.name }
          it { should eql "New York City" }
        end
        # TODO:  Better test.
        context "with Brooklyn, NY lat/long, scoped to a 10 mile radius" do
          before(:all) do
            @deals = @client.deals(:lat => "40.7325859", :lng => "-73.9568557", :radius => 10)
          end
          subject { @deals }
          it { should_not be_nil }
          subject { @deals.first.division.name }
          it { should eql "New York City" }
          subject { @deals.last.division.name }
          it { should eql "New York City" }
        end
      end
      context "details" do
        before(:all) do
          @deal = @client.deals("museum-of-modern-art")
          puts "deal: #{@deal.inspect}"
        end
        subject { @deal }
        it { should_not be_nil }
        it { should be_a(Hashie::Mash) }
        it { should respond_to(:id) }
        it { should respond_to(:title) }
        it { should respond_to(:merchant) }
        it { should respond_to(:endAt) }
        it { should respond_to(:type) }
        it { should respond_to(:areas) }
        # etc...
      end
    end
  end
end

