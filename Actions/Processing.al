page 50990 "Processing action"
{
    PageType = Card;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(Initialamount; Initialamount)
                {
                    ApplicationArea = All;
                }

                field(RateofInterest; RateofInterest)
                {
                    ApplicationArea = All;
                }

                field(Noofyears; Noofyears)
                {
                    ApplicationArea = All;
                }
            }

            group(Output)
            {
                field(FinalAmount; FinalAmount)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Generate Simple Intest")
            {
                ApplicationArea = All;
                ToolTip = 'Simple Interest';
                Caption = 'Simple Interest';


                trigger OnAction()
                begin
                    FinalAmount := Initialamount * (1 + RateofInterest * Noofyears);

                end;
            }
        }
    }


    // Since This page is not connected to any table you need to create Global Variable to create a field where record can be stored

    var
        Initialamount: Decimal;

        Noofyears: Integer;

        RateofInterest: Decimal;

        FinalAmount: Decimal;

}