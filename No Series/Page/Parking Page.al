page 50002 "Parking Lot List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Parking Lot";
    CardPageId = "Parking Lot Card";
    
    layout
    {
        area(Content)
        {
            repeater(groups)
            {
                field("Parking Id";Rec."Parking Id")
                {
                    ApplicationArea = All;
                    
                }
                field("Car Name";Rec."Car Name")
                {
                    ApplicationArea = All;
                    
                }
                field(Invoice;Rec.Invoice)
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