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
                    ApplicationArea = All ;
                }

                field(Age; Rec.Age)
                {
                    ApplicationArea = All ;
                }

                field(Specialty; Rec.Specialty)
                {
                    ApplicationArea = All ;
                }

                field("Experience in years"; Rec."Experience in years")
                {
                    ApplicationArea = All ;
                }

                field(Email; Rec.Email)
                {
                    ApplicationArea = All ;
                }

                field (No;Rec.No){
                    ApplicationArea = All ;
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