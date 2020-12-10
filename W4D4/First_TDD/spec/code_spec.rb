require 'rspec'
require 'code'

describe "TDD Project" do
    describe "Array#my_uniq" do 
        let(:arr1) {[1,2,2,3,3]}
        it "should remove duplicates" do 
            expect(arr1.my_uniq).to eq([1,2,3])
        end
        it "should return a new array" do 
            expect { arr1.my_uniq }.not_to change { arr1 }
        end
    end
end

