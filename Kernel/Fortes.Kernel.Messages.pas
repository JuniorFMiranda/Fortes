unit Fortes.Kernel.Messages;

interface

uses
  Messages;

const
  TM_START = WM_USER;
  TM_BLOCK = 10;

  TM_BASE = TM_START + TM_BLOCK;

  TM_BASE_FIND = TM_BASE + TM_BLOCK;
  TM_REFRESH_SUMMARY = TM_BASE_FIND + 1;

implementation

end.
