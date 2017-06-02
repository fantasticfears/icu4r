require "spec_helper"

describe ICU::Collator do
  subject { ICU::Collator.new("nb") }

  describe '.sort' do
    it "should sort an array of strings" do
      expect(subject.sort(%w[å ø æ])).to eq %w[æ ø å]
    end
  end
  
  describe '.compare' do
    it "should compare two strings" do
      expect(subject.compare("blåbærsyltetøy", "blah")).to eq 1
      expect(subject.compare("blåbærsyltetøy".encode("UTF-16"), "blah")).to eq 1
      expect(subject.compare("blåbærsyltetøy", "blah")).to eq 1
      expect(subject.compare("blah", "blah")).to eq 0
      expect(subject.compare("blah".encode("UTF-16"), "blah".encode("UTF-32"))).to eq 0
      expect(subject.compare("ba", "bl")).to eq -1
    end
  end

  describe '.locale' do
    pending
  end
end