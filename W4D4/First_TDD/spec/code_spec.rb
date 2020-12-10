require 'rspec'
require 'code'

describe "TDD Project" do
    describe "Array#my_uniq" do 
        let(:arr1) {[1,2,2,3,3]}
        it "sbould return an array" do
            expect(arr1.my_uniq).to be_an(Array)
        end
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

    describe "my_transpose" do
        let(:matrix) { [[0,1,2],[3,4,5],[6,7,8]] }
        after(:each) { my_transpose(matrix) }

        it "should transpose (swap rows and columns) of a given array" do
            expect(my_transpose(matrix)).to eq([[0,3,6],[1,4,7],[2,5,8]])
        end

        it "should not use built in transpose method" do
            expect(matrix).not_to receive(:transpose)
        end
    end
end

