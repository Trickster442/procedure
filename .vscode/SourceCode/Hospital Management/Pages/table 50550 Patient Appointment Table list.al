page 50551 "Patient Appointment Table List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = 50550;
    CardPageId = 50552;

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

                field(Age; Rec.Age)
                {

                }

                field(Gender; Rec.Gender)
                {

                }
                field(Disease; Rec.Disease)
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