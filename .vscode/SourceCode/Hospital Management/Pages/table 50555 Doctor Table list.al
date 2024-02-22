page 50556 "Doctor Table list"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Doctor Table";
    CardPageId = 50557;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("S.N"; Rec."S.N")
                {
                    ApplicationArea = All;

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

                field(Email; Rec.Email)
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