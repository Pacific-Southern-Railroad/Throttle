//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ThrottleUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TThrottle *Throttle;
//---------------------------------------------------------------------------
__fastcall TThrottle::TThrottle(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TThrottle::FormCreate(TObject *Sender)
{
	Speed->Text = 126 - TrackBar->Position;

	//Load cab signals

	LoadCabSignals("ClearSignal.bmp");   		//0
	LoadCabSignals("ApproachMediumSignal.bmp"); //1
	LoadCabSignals("ApproachSignal.bmp");    	//2
	LoadCabSignals("StopSignal.bmp");    		//3
	LoadCabSignals("PRRClear.bmp");         	//4
	LoadCabSignals("PRRApproachMedium.bmp");    //5
	LoadCabSignals("PRRApproach.bmp");          //6
	LoadCabSignals("PRRRestricting.bmp");       //7

    //Load IP address & name

	IPAddress->Lines->LoadFromFile("../TextFiles/IP Address.txt");
	Name->Lines->LoadFromFile("../TextFiles/Name.txt");

	//Set cab signal

	Aspect = "Stop";
	SetSignal();
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::TrackBarChange(TObject *Sender)
{
	SpeedChange = true;
	if(TrackBar->Position == 126)
	{
		Forward->Enabled = true;
		Reverse->Enabled = true;
	}
	else
	{
		Forward->Enabled = false;
		Reverse->Enabled = false;
    }
}
//---------------------------------------------------------------------------

	void TThrottle::LoadCabSignals(String Name)
{
	CabSignals->FileLoad(rtBitmap,("../Bitmaps\\" + Name), clWhite);
}

//---------------------------------------------------------------------------

void __fastcall TThrottle::ConnectClick(TObject *Sender)
{
	String Name = IPAddress->Lines->Text;	//initialized from file
	String Address;
	hostent* HostEntity;
	wchar_t* WChars = Name.c_str();      	//pointer to String data
	char Chars[20];                         //character buffer

	for(int i = 0; i < Name.Length(); i++)  //convert data to characters
	{
		Chars[i] = (char)WChars[i];
	}

	HostEntity = gethostbyname(Chars);      //get IP address
	Address = inet_ntoa(*(in_addr*)HostEntity->h_addr_list[0]);
	AddressInUse->Caption = Address;
	ClientSocket->Address = Address;
	ClientSocket->Active = true;
	Controls->Visible = true;
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::ReleaseClick(TObject *Sender)
{
	TrackBar->Position = 126;
	TrackBar->Enabled = false;
	if(Block->Text != "")
		WriteServer("Drop", Block->Text, "");
	SelectLoco->Visible = true;
	NotAvailable->Visible = false;
	Loco->Text = "";
	Block->Text = "";
	Train->Text = "";
    Aspect = "";
	SetSignal();
	SigSpeed->Caption = "0";
	Engine->Text = "";
	Engine->SetFocus();
}
//--------------------------------------------------------------------------

void __fastcall TThrottle::ConnectLocoClick(TObject *Sender)
{
	if(Engine->Text != "")
	{
		WriteServer("Loco", Engine->Text, "");
	}
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::btnStopClick(TObject *Sender)
{
    TrackBar->Position = 126;
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::SignalClick(TObject *Sender)
{
	PRRAspects = !PRRAspects;
	SetSignal();
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::ClientSocketConnect(TObject *Sender, TCustomWinSocket *Socket)
{
	SelectLoco->Visible = true;
	SignUp->Visible = false;
	Engine->SetFocus();
    Engine->Text = "";
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::FormClose(TObject *Sender, TCloseAction &Action)
{
	if(Controls->Visible && Block->Text != "")
		WriteServer("Drop", Block->Text, "");
	Name->Lines->SaveToFile("../TextFiles/Name.txt");
}
//---------------------------------------------------------------------------

void TThrottle::WriteServer(String Type, String A, String B)
{
	String OutMessage = AnsiString::StringOfChar(' ', 45);

	OutMessage.Insert1(Name->Lines->Text, 1);
	OutMessage.Insert(Type, 10);
	OutMessage.Insert(A, 20);
	OutMessage.Insert(B, 30);
	OutMessage.Insert("##", 40);
	OutMessage = OutMessage.TrimRight();

	ClientSocket->Socket->SendText(OutMessage);
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::ClientSocketRead(TObject *Sender, TCustomWinSocket *Socket)

{
	String InMessage = Socket->ReceiveText();
	String NameBack = InMessage.SubString1(1, 9).TrimRight();
	String Type = InMessage.SubString(10, 9).TrimRight();

	if(NameBack == Name->Text)             //Message if for this throttle
	{
		if(Type == "NoLoco")
		{
			NotAvailable->Visible = true;
			Engine->Text = "";
		}
		else if(Type == "Connect")
		{
			SelectLoco->Visible = false;
			Controls->Visible = true;
			TrackBar->Position = 126;
            TrackBar->Enabled = true;
			Loco->Text = Engine->Text;
			Block->Text = InMessage.SubString(20, 9).TrimRight();
            Train->Text = InMessage.SubString(30, 9).TrimRight();
		}
		else if(Type == "Block")
		{
			Block->Text = InMessage.SubString(20, 9).TrimRight();
            Train->Text = InMessage.SubString(30, 9).TrimRight();
		}
		else if(Type == "Signal")
		{
			Aspect = InMessage.SubString(20, 9).TrimRight();
			SetSignal();
            SigSpeed->Caption = InMessage.SubString(30, 9).TrimRight();
		}
		else if(Type == "Drop")
		{
			Loco->Text = "";
			Block->Text = "";
			Train->Text = "";
			Aspect = "";
			TrackBar->Position = 126;
            TrackBar->Enabled = false;
			SetSignal();
			SigSpeed->Caption = "0";
			SelectLoco->Visible = true;
			NotAvailable->Visible = false;
			Engine->Text = "";
		}
	}
}
//---------------------------------------------------------------------------
void TThrottle::SetSignal()
{
	if(!PRRAspects)
	{
		if(Aspect == "Clear")
			CabSignals->Draw(Signal->Canvas, 0, 0, 0, true);
		else if(Aspect == "AppMed")
			CabSignals->Draw(Signal->Canvas, 0, 0, 1, true);
		else if(Aspect == "Approach")
			CabSignals->Draw(Signal->Canvas, 0, 0, 2, true);
		else
			CabSignals->Draw(Signal->Canvas, 0, 0, 3, true);  //Stop
	}
	else
	{
		if(Aspect == "Clear")
			CabSignals->Draw(Signal->Canvas, 0, 0, 4, true);
		else if(Aspect == "AppMed")
			CabSignals->Draw(Signal->Canvas, 0, 0, 5, true);
		else if(Aspect == "Approach")
			CabSignals->Draw(Signal->Canvas, 0, 0, 6, true);
		else
			CabSignals->Draw(Signal->Canvas, 0, 0, 7, true);  //Restricting
	}
	Signal->Repaint();
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::ClientSocketDisconnect(TObject *Sender, TCustomWinSocket *Socket)

{
	SignUp->Visible = true;
	SelectLoco->Visible = false;
    Controls->Visible = false;
}
//---------------------------------------------------------------------------


void __fastcall TThrottle::TimerTimer(TObject *Sender)
{
	if(Aspect == "Stop" || Aspect == "")
	{
		TrackBar->Position = 126;
		TrackBar->Enabled = false;
	}
	else
		TrackBar->Enabled = true;
	if(DirChange)
	{
		DirChange = false;
		String Dir;
		if(Forward->Down)
			Dir = "For";
		else
			Dir = "Rev";
		WriteServer("Dir", Block->Text, Dir);
    }
	else if(SpeedChange && !SelectLoco->Visible)
	{
		SpeedChange = false;
		Speed->Text = 126 - TrackBar->Position;
		WriteServer("Speed", Block->Text, Speed->Text);
	}
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::HornMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
	WriteServer("HornDn", Block->Text, "");
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::HornMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
		  int X, int Y)
{
	WriteServer("HornUp", Block->Text, "");
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::HeadlightMouseDown(TObject *Sender, TMouseButton Button,
		  TShiftState Shift, int X, int Y)
{
	WriteServer("HeadLt", Block->Text, "");
}
//---------------------------------------------------------------------------


void __fastcall TThrottle::ForwardClick(TObject *Sender)
{
	WriteServer("Dir", Block->Text, "For");
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::ReverseClick(TObject *Sender)
{
	WriteServer("Dir", Block->Text, "Rev");
}
//---------------------------------------------------------------------------

void __fastcall TThrottle::BellMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
	WriteServer("Bell", Block->Text, "");
}
//---------------------------------------------------------------------------



