page 50552 "Patient Appointment Table Card"
{
    PageType = Card;
    SourceTable = 50550;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("S.N"; Rec."S.N")
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }

                field(Age;Rec.Age){

                }

                field(Gender;Rec.Gender){

                }
                field(Disease;Rec.Disease){
                    
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