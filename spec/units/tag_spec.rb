require './lib/tag'

RSpec.describe 'Tag' do
    let(:tag) { Tag.create(:label => 'tag1') }

    describe 'label' do
        it "will return a message" do
          expect(tag.label).to eq 'tag1'
        end
    end

end