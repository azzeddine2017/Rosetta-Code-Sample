# The Main File
Load "lib.ring"



if IsMainSourceFile() { 
	new QApp {
		StyleFusion()
		oRosettaSample = new RosettaCodeSample
		oRosettaSample{win.show() }
		exec()
	}
}
