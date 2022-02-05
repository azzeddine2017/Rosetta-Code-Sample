# Project :Speech synthesis
# Author : Gal Zsolt 
# Generated from RosettaCode by Azzeddine Remmal

  

load "guilib.ring"

myApp = New qApp 
{
   Text = "Hello. This is an example of speech synthesis"
   voice = new QTextToSpeech(null)
   voice.Say(Text)
   
   exec()
}

 
