page 50557 "Doctor Table card"
{
    PageType = Card;
    SourceTable = "Doctor Table";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("S.N"; Rec."S.N")
                {
                    ApplicationArea = All;
                    Editable = false;

                }

                field(Name; Rec.Name)
                {

                }

                field(Age; Rec.Age)
                {

                }

                field(Specialty; Rec.Specialty)
                {

                }

                field("Experience in years"; Rec."Experience in years")
                {

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