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

        // To navigate to certain object from this page
        area(Navigation)
        {
            // If you wish to create a multiple navigation sub menu buttons you can group and add them in group

            group("Navigate to")
            {

                action("Customer Card")
                {
                    ApplicationArea = All;
                    Caption = 'Customer Card';
                    RunObject = page "Customer Card";
                }

                action("Vendor Card")
                {
                    ApplicationArea = All;
                    Caption = 'Vendor Card';
                    RunObject = page "Vendor Card";

                }
            }
        }

        area(Creation)
        {
            group(Create)
            {
                action("New Document")
                {
                    ApplicationArea = All;
                    RunObject = page "Customer Card";
                    Image = Account; //you can import default image into your action with the help of image properties
                }
            }
        }

        area(Reporting)
        {
            action("Report")
            {
                ApplicationArea = All;
                RunObject = report "Analysis Report";
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