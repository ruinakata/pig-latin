require "spec_helper"

describe "PigLatin" do 
  
  it "can't take more than one word" do 
    expect(PigLatin.checkinput("Hi there")).to eq(false)
  end

  it "can take a word that starts with a consonant" do
    expect(PigLatin.otherstuff("glove")).to eq("oveglay")
  end

  it "can take a word that starts with a vowel" do
    expect(PigLatin.otherstuff("egg")).to eq("eggway")
  end

  it "when there is a y in the beginning, it acts as a consonant" do
    expect(PigLatin.otherstuff("yellow")).to eq("ellowyay")
  end

  it "when theres a y in the middle, it acts as a vowel" do
    expect(PigLatin.otherstuff("rhythm")).to eq("ythmrhay")
  end


end