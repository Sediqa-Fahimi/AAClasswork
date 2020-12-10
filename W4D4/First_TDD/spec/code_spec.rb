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

    describe "Array#two_sum" do
        let(:array) { [-1,0,2,-2,1] }
        it "should return a 2d array including indexes" do
            expect(array.two_sum).to eq([[0, 4], [2, 3]])
        end
    end
end

