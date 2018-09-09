require "rails_helper"

RSpec.describe Comment, type: :model do
  describe "Comment" do
    context "association" do
      subject { create(:comment) }
      it { is_expected.to belong_to(:article) }
    end
    context "validation" do
      subject { create(:comment) }
      it { is_expected.to validate_presence_of(:comment) }
      it { is_expected.to validate_presence_of(:article_id) }
    end
  end
end
