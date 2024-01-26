page 50898 "Trainee Table Card page"
{
    PageType = Card;

    SourceTable = "Trainee Table";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Symbol; Rec.Symbol)
                {
                    ApplicationArea = All;

                }
                field("Full name"; Rec."Full name")
                {
                    ApplicationArea = All;

                }
                field(Age; Rec.Age)
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