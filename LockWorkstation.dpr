program LockWorkStation;

uses
  SysUtils,
  StrUtils,
  Windows;


{$E scr}

var param: string;

begin
  param:= AnsiLowerCase(ParamStr(1));

  if AnsiStartsStr('/c', param)  then begin
    MessageBox(0, 'There is no configuration', 'Lock Workstation Screen Saver', 0);
    Exit;
  end;

  if param = '/p' then begin
    // Do nothing
    Exit;
  end;

  if (param = '/s') or (param = '') then begin
    Windows.LockWorkStation();
    Exit;
  end;

  MessageBox(0, PChar('Invalid parameter: '+ ParamStr(1)), 'Lock Workstation Screen Saver', 0);


end.
