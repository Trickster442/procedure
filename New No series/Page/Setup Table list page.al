page 50116 "Setup Page List Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Setup Page";

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                // field(Name; Rec.Name)
                // {
                //     ApplicationArea = All;

                // }
                field(COD; Rec.COD)
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