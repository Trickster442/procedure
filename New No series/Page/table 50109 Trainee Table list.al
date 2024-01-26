page 50897 "Trainee Table List page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Trainee Table";

    layout
    {
        area(Content)
        {
            repeater(groups)
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