page 51882 "Loan Header Card Page"
{
    Caption = 'Loan Header Card Page';
    PageType = Card;
    SourceTable = "Loan Header Table";
    

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Loan Id"; Rec."Loan Id")
                {
                    ApplicationArea = All;
                }
                field("Customer Id"; Rec."Customer Id")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Bank Acc No"; Rec."Bank Acc No")
                {
                    ApplicationArea = All;
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                }
                field("Loan Amount"; Rec."Loan Amount")
                {
                    ApplicationArea = All;
                }
                field("Loan Start"; Rec."Loan Start")
                {
                    ApplicationArea = All;
                }
                field("Loan Ended"; Rec."Loan Ended")
                {
                    ApplicationArea = All;
                }
                field("Total Loan Paid";Rec."Total Loan Paid")
                {
                    ApplicationArea = All;
                    

                }
            }
            part("Loan Line"; "Line Sub Form")
            {
                SubPageLink = "Loan No" = field("Loan Id");
            }
        }
    }
}
