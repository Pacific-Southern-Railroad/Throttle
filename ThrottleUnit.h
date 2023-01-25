//---------------------------------------------------------------------------

#ifndef ThrottleUnitH
#define ThrottleUnitH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Graphics.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.Buttons.hpp>
#include <System.ImageList.hpp>
#include <System.Win.ScktComp.hpp>
#include <Vcl.ImgList.hpp>
//---------------------------------------------------------------------------


class TThrottle : public TForm
{
__published:	// IDE-managed Components
	TEdit *Train;
	TEdit *Loco;
	TEdit *Block;
	TEdit *Speed;
	TImage *Signal;
	TButton *Horn;
	TButton *Headlight;
	TSpeedButton *Forward;
	TSpeedButton *btnStop;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TClientSocket *ClientSocket;
	TImageList *CabSignals;
	TPanel *Controls;
	TPanel *SignUp;
	TTrackBar *TrackBar;
	TButton *Release;
	TPanel *SelectLoco;
	TEdit *Engine;
	TButton *ConnectLoco;
	TLabel *Label6;
	TMemo *IPAddress;
	TLabel *Label7;
	TMemo *Name;
	TLabel *NotAvailable;
	TTimer *Timer;
	TSpeedButton *Reverse;
	TButton *Bell;
	TLabel *SigSpeed;
	TLabel *AddressInUse;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall TrackBarChange(TObject *Sender);
	void __fastcall ConnectClick(TObject *Sender);
	void __fastcall ReleaseClick(TObject *Sender);
	void __fastcall ConnectLocoClick(TObject *Sender);
	void __fastcall btnStopClick(TObject *Sender);
	void __fastcall SignalClick(TObject *Sender);
	void __fastcall ClientSocketConnect(TObject *Sender, TCustomWinSocket *Socket);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall ClientSocketRead(TObject *Sender, TCustomWinSocket *Socket);
	void __fastcall ClientSocketDisconnect(TObject *Sender, TCustomWinSocket *Socket);
	void __fastcall TimerTimer(TObject *Sender);
	void __fastcall HornMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall HornMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall HeadlightMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
	void __fastcall ForwardClick(TObject *Sender);
	void __fastcall ReverseClick(TObject *Sender);
	void __fastcall BellMouseDown(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);


private:	// User declarations

	void LoadCabSignals(String Name);
	void WriteServer(String Type, String A, String B);
	void SetSignal();

    String ClientID;    //assigned by server
	String Aspect;      //aspect for cab signal
	bool PRRAspects;  //true for PRR
	bool SpeedChange;  //true when slide bar changes
	bool DirChange;     //true when direction changes

public:		// User declarations
	__fastcall TThrottle(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TThrottle *Throttle;
//---------------------------------------------------------------------------
#endif
