codeunit 50149 Code_unit
{
    trigger OnRun()
    var
        myCode: Record practiseTable;
    begin
        myCode.Get();
        myCode.Result_Add := (myCode.Number1 + myCode.Number2);
        myCode.Modify();
    end;

    procedure subByValue(a: Integer; b: Integer): Decimal
    begin
        exit(a - b)
    end;

    procedure div_with_no_return()
    var
        no_rec: Record practiseTable;
    begin
        no_rec.Get();
        no_rec.Result_Div := no_rec.Number1 / no_rec.Number2;
        no_rec.Modify();
    end;

    procedure mul_with_ref(a: Integer; b: Integer; var c: Decimal)

    begin
        c := a * b;

    end;

    procedure multiplyBy_Value(a:Integer;b:Integer): Decimal
    
    begin
        exit(a*b)
    end;

     procedure divisionBy_Value(a:Integer;b:Integer): Decimal
    begin
        exit(a/b)
    end;

     procedure sub_no_return()
    var
        no_rec : Record practiseTable;
    begin
        no_rec.Get();
        no_rec.Result_Sub := no_rec.Number1 - no_rec.Number2;
        no_rec.Modify();
        
    end;

    procedure multiply_no_return()
    var
     no_rec : Record practiseTable;
    begin
        no_rec.Get();
        no_rec.Result_Mul := no_rec.Number1 * no_rec.Number2 ;
        no_rec.Modify();
        
    end;

    procedure sub_with_ref(a:Integer;b:Integer; var c: Decimal)
    begin
        c := a-b;
    end;

    procedure div_with_ref(a:Integer;b:Integer; var c: Decimal)
    begin
        c := a / b;
    end;


}