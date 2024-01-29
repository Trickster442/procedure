page 51891 "Line Sub Form"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Loan Line";
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(groups)
            {
                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;

                }
                field("Line No"; Rec."Line No")
                {
                    ApplicationArea = All;

                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        trex: Record "Loan Header Table";
                    begin
                        trex.get(trex."Loan Start", trex."Loan Ended");
                        if (rec.Date < trex."Loan Start") and (rec.Date > trex."Loan Ended") then begin
                            Error('Inserted wrong');
                        end
                    end;
                }
                field("Paid Amt"; Rec."Paid Amt")
                {
                    ApplicationArea = All;

                }

            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}