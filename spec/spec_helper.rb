
describe "PigLatin" do 
  
  it "can't take more than one word" do 
    expect(PigLatin.checkinput).to eq(true)
  end


end