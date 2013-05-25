require 'spec_helper.rb'

describe Player do

	describe "instance methods" do

		describe "display_height" do
			it "returns the height in proper notation" do
				heights = [66, 72, 80].map do |height|
					"#{height/12}'#{height%12}"
				end

				display_height1, display_height2, display_height3 = heights
				display_height1.should eq "5'6"
				display_height2.should eq "6'0"
				display_height3.should eq "6'8"
			end
		end

	end

end
