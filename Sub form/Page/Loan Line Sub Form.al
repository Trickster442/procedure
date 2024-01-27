page 51891 "Line Sub Form"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Loan Line";
    AutoSplitKey = true ; 
    
    layout
    {
        area(Content)
        {
            repeater(groups)
            {
                field("Loan No";Rec."Loan No")
                {
                    ApplicationArea = All;
                    
                }
                field("Line No";Rec."Line No")
                {
                    ApplicationArea = All;
                    
                }
                field(Date;Rec.Date)
                {
                    ApplicationArea = All;
                    
                }
                field("Paid Amt";Rec."Paid Amt")
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