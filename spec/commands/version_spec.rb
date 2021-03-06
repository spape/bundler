# frozen_string_literal: true

RSpec.describe "bundle version" do
  context "with -v" do
    it "outputs the version" do
      bundle! "-v"
      expect(out).to eq("Bundler version #{Bundler::VERSION}")
    end
  end

  context "with --version" do
    it "outputs the version" do
      bundle! "--version"
      expect(out).to eq("Bundler version #{Bundler::VERSION}")
    end
  end

  context "with version" do
    it "outputs the version with build metadata" do
      bundle! "version"
      expect(out).to match(/\ABundler version #{Regexp.escape(Bundler::VERSION)} \(\d{4}-\d{2}-\d{2} commit [a-fA-F0-9]{7,}\)\z/)
    end
  end
end
