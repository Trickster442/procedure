page 50003 "Parking Lot Card"
{
    PageType = Card;
    SourceTable = "Parking Lot";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Parking Id"; Rec."Parking Id")
                {
                    ApplicationArea = All;

                }
                field("Car Name"; Rec."Car Name")
                {
                    ApplicationArea = All;
                }
                field(Invoice; Rec.Invoice)
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