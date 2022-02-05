# Project : Rosetta Code Sample
# Author  : Azzeddine Remmal
# Email   : <azzeddine.remmal@gmail.com>
# Date : 02/02/2022
Load "stdlibcore.ring"
Load "guilib.ring"



if IsMainSourceFile() { 
	new QApp {
		StyleFusion()
		oRosettaSample = new RosettaCodeSample
		oRosettaSample{win.show() }
		exec()
	}
}

class RosettaCodeSample

		win   sampleListWidget 	SearchLineEdit 	Label1	 oProcess
		TaskDescreptionHyperLink 	SourceCodeTextEdit	Runbtn  Searchbtn
		Sendbtn		OutputTextEdit	InputLineEdit		TaskCorrectionHyperLink
		oDockSourceCode				oDockOutput					oDockListWidget
		oSourceCodeWidget			OutputWidget					oListWidget	
		oLayoutSourceCodeText		oLayoutOutputTextEdit		oLayoutListWidget
		oDesktop

		cssText    = "border:1px solid black;border-radius:7px;color:blue;border:2px solid #9977fa;"
		cssLabel   = "color:navy;"
		cssButton = "QPushButton{background-color:green;border:2px solid #9977fa;border-radius:15px;color:lightblue;} QPushButton:hover{color:navy;background-color:#2ca57b;} QPushButton:pressed{color:#aaa;background-color:#2ca57b; }"
		cssSourceCode = "QPlainTextEdit {background-color:#0a0101;border:2px solid #9977fa;border-radius:15px;color:#92d50d;}"
		cssSampleListWidget = "QListWidget{background-color:#aecdcc;border:2px solid #9977fa;border-radius:15px;color:#0f0c62;}"
		cssOutputTextEdit = "QTextEdit{background-color:#10122e;border:2px solid #9977fa;border-radius:15px;color:#ebedf0;}"
		cActiveFileName 	= ""
	  
		aListSample =[]
		oTFont = new qfont("",0,0,0)
		this.oDesktop = new qDesktopWidget()
		Eval(Read("aSample.txt"))	

	win = new qMainWindow(){ 
			move(50,50)
			resize(800,600)
			setWindowTitle("rosettacodesamples")
			setstylesheet("background-color:;") 
			
	  	 this.oSourceCodeWidget = new qWidget(){ 
				this.SourceCodeTextEdit = new CodeEditor(this.win) {
					move(182,95)
					resize(449,566)
					setstylesheet("background-color:#0a0101;color:#ebedf0;")
					oFont = new qfont("",0,0,0)
					oFont.fromstring("Roboto,18,-1,5,50,1,0,0,0,0,Regular")
					Document().setdefaultfont(oFont)
					oFont.delete()	
					setLineWrapMode(QTextEdit_NoWrap)
					SetActiveLineColor( new qColor() { setrgb(128,128,128,255) })
					setLineNumbersAreaColor( new qColor() { setrgb(255,255,255,255) })
					setLineNumbersAreaBackColor(new qColor() { setrgb(0,0,0,255) })
					new RingCodeHighLighter( SourceCodeTextEdit.document() ) {
						setColors(
							 new qcolor() { setrgb(30,220,175,255) },
							 new qcolor() { setrgb(166,226,46,255) },
							 new qcolor() { setrgb(117,160,172,157)},
							 new qcolor() { setrgb(230,191,77,255) },
							 new qcolor() { setrgb(240,127,224,255)}
							)
			}
				}
				this.TaskDescreptionHyperLink = new qlabel(this.win) {
					move(196,49)
					resize(425,33)
					setstylesheet(cssLabel)
					oFont = new qfont("",0,0,0)
					oFont.fromstring("Arial,14,-1,5,50,1,0,0,0,0,Italic")
					setfont(oFont)
					oFont.delete()
					setText('<a href=""></a>')
					
				}
				this.Label1 = new qlabel(this.win) {
					move(177,10)
					resize(449,33)
					setstylesheet(cssLabel)
					oFont = new qfont("",0,0,0)
					oFont.fromstring("Arial,22,-1,5,50,1,0,0,0,0,Italic")
					setfont(oFont)
					oFont.delete()
					setText(" ")
					setAlignment(Qt_AlignHCenter |  Qt_AlignVCenter)
				}
				this.oLayoutSourceCodeText = new qVBoxlayout(){ 
					AddWidget(this.Label1)
					AddWidget(this.TaskDescreptionHyperLink)
					AddWidget(this.sourcecodeTextEdit)
					setContentsMargins(0,0,0,0)	
					setspacing(0)
				}
				setLayout(this.oLayoutSourceCodeText)
		}
		this.oDockSourceCode = new qdockwidget(this.win,0) {
				setwidget(this.oSourceCodeWidget)
				setwindowtitle("Source Code")
				setminimumwidth(floor(this.oDesktop.width()*0.4))	                                                 
		}
		this.OutputWidget = new qWidget() {
				this.TaskCorrectionHyperLink = new qlabel(this.win) {
					move(196,49)
					resize(425,33)
					setstylesheet(cssLabel)
					oFont = new qfont("",0,0,0)
					oFont.fromstring("Arial,14,-1,5,50,1,0,0,0,0,Italic")
					setfont(oFont)
					oFont.delete()
					setText('<a href=""></a>')
					
				}
				this.Runbtn = new qpushbutton(this.win) {
						move(784,49)
						resize(112,29)
						setstylesheet(cssButton)
						oFont = new qfont("",0,0,0)
						oFont.fromstring("Arial,18,-1,5,50,1,0,0,0,0,Italic")
						setfont(oFont)
						oFont.delete()
						setText("Run")
						setClickEvent("oRosettaSample.Run()")
						setBtnImage(runbtn,"")
						
					}
					this.OutputTextEdit = new qtextedit(this.win) {
						move(634,98)
						resize(266,464)
						setstylesheet(cssOutputTextEdit)
						oFont = new qfont("",0,0,0)
						oFont.fromstring("Arial,16,-1,5,50,1,0,0,0,0,Italic")
						setfont(oFont)
						oFont.delete()
					}
					this.InputLineEdit = new qlineedit(this.win) {
						move(636,575)
						resize(261,33)
						setstylesheet(cssText)
						oFont = new qfont("",0,0,0)
						oFont.fromstring("Arial,12,-1,5,50,1,0,0,0,0,Italic")
						setfont(oFont)
						oFont.delete()
						setText(" ")
					}
					this.Sendbtn = new qpushbutton(this.win) {
						move(632,619)
						resize(265,38)
						setstylesheet(cssButton)
						oFont = new qfont("",0,0,0)
						oFont.fromstring("Arial,18,-1,5,50,1,0,0,0,0,Italic")
						setfont(oFont)
						oFont.delete()
						setText("Send")
						setClickEvent("oRosettaSample.SendData()")
						setBtnImage(Sendbtn,"")
						
					}
				this.oLayoutOutputTextEdit = new qVBoxlayout() {
					 AddWidget(this.TaskCorrectionHyperLink)
					AddWidget(this.runbtn)
					AddWidget(this.OutputTextEdit)
					AddWidget(this.inputLineEdit)
					AddWidget(this.Sendbtn)
					setContentsMargins(0,0,0,0)
					setspacing(0)
				}
				setLayout(this.oLayoutOutputTextEdit)
			}
		this.oDockOutput = new qdockwidget(this.win,0) {
				setwidget(this.OutputWidget)
				setwindowtitle("Output Code")
				setminimumwidth(floor(this.oDesktop.width()*0.10))                                                     
		}
		this.oListWidget = new qWidget() {

				this.SearchLineEdit = new qlineedit(this.win) {
					move(4,53)
					resize(170,31)
					setstylesheet(cssText)
					oFont = new qfont("",0,0,0)
					oFont.fromstring("Arial,12,-1,5,50,1,0,0,0,0,Italic")
					setfont(oFont)
					oFont.delete()
					setText("Search")
				}
				this.Searchbtn = new qpushbutton(this.win) {
						move(632,619)
						resize(265,25)
						setstylesheet(cssButton)
						oFont = new qfont("",0,0,0)
						oFont.fromstring("Arial,18,-1,5,50,1,0,0,0,0,Italic")
						setfont(oFont)
						oFont.delete()
						setText("Search")
						setClickEvent("oRosettaSample.Search()")
						setBtnImage(Sendbtn,"")
						
				}
				this.SampleListWidget = new qlistwidget(this.win) {
					move(6,90)
					resize(171,567)
					setstylesheet(csssampleListWidget)
					oFont = new qfont("",0,0,0)
					oFont.fromstring("Arial,14,-1,5,50,1,0,0,0,0,Italic")
					setfont(oFont)
					oFont.delete()
					setcurrentItemChangedEvent("oRosettaSample.SelectSample()")
				}
				this.oLayoutListWidget = new qVBoxlayout() {
					AddWidget(this.Searchbtn)
					AddWidget(this.SearchLineEdit)
					AddWidget(this.sampleListWidget)
					setContentsMargins(0,0,0,0)
					setspacing(0)
				}
				setLayout(this.oLayoutListWidget)
		}
		this.oDockListWidget = new qdockwidget(win,0) {
				setwidget(this.oListWidget)
				setwindowtitle("List Sample")
				setminimumwidth(floor(this.oDesktop.width()*0.10))                                                     
		}
	
			adddockwidget(Qt_LeftDockWidgetArea,this.oDockListWidget,1)
			adddockwidget(Qt_RightDockWidgetArea,this.oDockSourceCode,2)
			adddockwidget(Qt_RightDockWidgetArea,this.oDockOutput,1)
				this.oDockSourceCode.raise()
				this.oDockListWidget.raise()
	}


				

		//this.SourceCodeTextEdit.setReadOnly(1)	
		this.sampleListWidget.SetSelectionMode(1)
		this.TaskDescreptionHyperLink.SetOpenExternalLinks(1)
		this.TaskCorrectionHyperLink.SetOpenExternalLinks(1)


		for x=1 to len(aSample)
			aListSample + aSample[x]["Titele"] 
		next

		for x=1 to len(aListSample)
			this.sampleListWidget.AddItem(aListsample[x] )

		next

		this.SampleListWidget.SetCurrentRow( 0 , 2)


	func SelectSample()
			
		this.OutputTextEdit.setplaintext("")
		crNo = SampleListWidget.CurrentRow() +1
		?  crNo
		 cActiveFileName 	= CurrentDir() +"\"+ aSample[crNo]["RosettaSampleSourcsCode"]
		//? cActiveFileName 	
		TaskUrlCorrection = "Correction From Rosetta"          
		preparCorrectionUrl =  aSample[crNo]["SampleUrlText"]  
		Correctionstrurl = '<a href= #{f1}>#{f2}</a>'
		Correctionstrurl =substr(Correctionstrurl , "#{f1}" ,preparCorrectionUrl)
		Correctionstrurl =substr(Correctionstrurl , "#{f2}" ,TaskUrlCorrection )
		this.TaskCorrectionHyperLink.setText(Correctionstrurl )

		TaskUrlDescreption = "Descreption :"+aSample[crNo]["Titele"] 
		preparDescreptionUrl =  aSample[crNo]["UrlDescreption"]  
		Descreptionstrurl = '<a href= #{f1}>#{f2}</a>'
		Descreptionstrurl =substr(Descreptionstrurl , "#{f1}" ,preparDescreptionUrl)
		Descreptionstrurl =substr(Descreptionstrurl , "#{f2}" ,TaskUrlDescreption )
		this.TaskDescreptionHyperLink.setText(Descreptionstrurl )

		selectedListWidget = this.SampleListWidget.Item(crNo-1).Text()
		this.Label1.SetText(selectedListWidget )
		preparPeth = aSample[crNo]["RosettaSampleSourcsCode"]
		//?	preparPeth	
		SampleText = read(preparPeth)
		//? SampleText
		this.SourceCodeTextEdit.setPlaintext(SampleText )
					
	func Run()
				
		if cActiveFileName = Null return  ok
		save()
		RunGUIOperation(cActiveFileName)
		
	
	func RunProcess( cProgram,cArg,cGetDataFunc)

		aPara = split(cArg,",")
		oStringList = new qStringlist() {
			for cPara in aPara 
				append(cPara)
			next
		}
		oProcess = new qprocess(NULL) {
			setprogram( cProgram)
			setarguments(ostringlist)
			setreadyreadstandardoutputevent(cGetDataFunc)
			start_3(  QIODevice_ReadWrite )
		}
		return oProcess

	func GetProcessData()
 
		if ISNULL(oProcess) return ok
		cText = oProcess.readallstandardoutput().data()
		if isWindows() cText = substr(cText,WindowsNL(),nl) ok
		cCurrentText = this.OutputTextEdit.toplaintext()
		C_OUTPUTBUFFERSIZE = 1024*1024 # 1 MB
		cText = right(cCurrentText,min(C_OUTPUTBUFFERSIZE-len(cText),len(cCurrentText)) ) + cText
		this.OutputTextEdit.setplaintext(cText)
		oCursor = this.OutputTextEdit.textcursor()
		nPos = max(len(this.OutputTextEdit.toplaintext())-1,0)
		oCursor.setPosition(nPos,QTextCursor_KeepAnchor)
		oCursor.setPosition(nPos,QTextCursor_MoveAnchor)
		this.OutputTextEdit.setTextCursor(oCursor)
				
	func SendData()

		if ISNULL(oProcess) return ok
		if isWindows()
			cText = this.InputLineEdit.text() + windowsnl()
		else 
			cText = this.InputLineEdit.text() + nl
		ok
		oProcess.write(cText ,len(cText))
		this.OutputTextEdit.insertplaintext(cText)
		this.InputLineEdit.setText(" ")

	func RunGUIOperation( cActiveFileName)

		this.OutputTextEdit.setplaintext(" ")
		cDir = CurrentDir()
		chdir(JustFilePath(cActiveFileName))
		if isBatchFile(cActiveFileName)
			cCode = RunBatchFile(cActiveFileName)
			oProcess = RunProcess(cCode," ","oRosettaSample.GetProcessData()")
		else 
			oProcess = RunProcess(exefilename(),cActiveFileName,"oRosettaSample.GetProcessData()")
		ok
		chdir(cDir)
				
	
	func isBatchFile( cFile)
 
		if right(lower(trim(cFile)),4) = ".bat" or 
			right(lower(trim(cFile)),3) = ".sh"
			return True 
		ok
		return False 

	func RunBatchFile( cFile)

		if iswindows()
			chdir(JustFilePath(cFile))
			cCode = cFile
		else
			cCode = 'cd $(dirname "'+cFile+'") ; ' + './' + cFile +  nl
		ok
		return cCode 
	
	func Save()
			
		if cActiveFileName = NULL return  ok
		write(cActiveFileName,this.SourceCodeTextEdit.toplaintext())

	func Search()

		cStrSearch =  this.SearchLineEdit.Text()
		for index = 1 to len(aListSample)
				if 	substr(aListSample[index], cStrSearch ) 
					this.SampleListWidget.SetCurrentRow( index , 2)
				ok
		 next
			
					
			
	

	
